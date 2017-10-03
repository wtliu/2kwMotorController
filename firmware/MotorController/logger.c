/*
 * logger.c
 *
 *  Created on: Oct 3, 2017
 *      Author: Oliver Douglas
 */

#include "stdinclude.h"
#include "build.h"
#include "system.h"
#include "logger.h"
#include "xprintf.h"
#include "inc/tm4c1294ncpdt.h"
#include "inc/hw_memmap.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include "FreeRTOS.h"
#include "queue.h"



/******************************************************************************
 * Definitions
 *****************************************************************************/
#if BUILD_TARGET == BUILD_TARGET_LAUNCHPAD
#define DEBUG_UART_SYSCTL_PERIPH    SYSCTL_PERIPH_UART0
#define DEBUG_UART_BASE             UART0_BASE
#elif BUILD_TARGET == BUILD_TARGET_2KWMC
#define DEBUG_UART_SYSCTL_PERIPH    SYSCTL_PERIPH_UART3
#define DEBUG_UART_BASE             UART3_BASE
#else
#error "BUILD_TARGET not defined!"
#endif

#define DEBUG_UART_BAUD             115200
#define DEBUG_UART_CONFIG           \
    (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE)
#define DEBUG_UART_BUFFER_SIZE      512


/******************************************************************************
 * Circular buffer for Debug UART
 *****************************************************************************/
static char tx_buffer[DEBUG_UART_BUFFER_SIZE];
static int buf_head;
static int buf_tail;

static int increment_mod_n(int x, int n)
{
    x++;
    if (x == n)
        x = 0;
    return x;
}

static bool buffer_is_full(void)
{
    return (increment_mod_n(buf_tail, DEBUG_UART_BUFFER_SIZE) == buf_head);
}

static bool buffer_is_empty(void)
{
    return buf_tail == buf_head;
}

static void buffer_put(unsigned char c)
{
    tx_buffer[buf_tail] = c;
    buf_tail = increment_mod_n(buf_tail, DEBUG_UART_BUFFER_SIZE);
}

static char buffer_get(void)
{
    char c = tx_buffer[buf_head];
    buf_head = increment_mod_n(buf_head, DEBUG_UART_BUFFER_SIZE);
    return c;
}


/******************************************************************************
 * Debug UART
 *****************************************************************************/

/* Refill the UART peripheral's hardware FIFO from the software buffer. When
 * the software buffer has been emptied, disable the trigger for this ISR.
 */
static void debug_uart_ISR(void)
{
    uint32_t status = UARTIntStatus(DEBUG_UART_BASE, true);
    UARTIntClear(DEBUG_UART_BASE, status);

    if (status == UART_INT_TX) {
        while (true) {
            if (buffer_is_empty()) {
                UARTIntDisable(DEBUG_UART_BASE, UART_INT_TX);
                break;
            } else if (UARTSpaceAvail(DEBUG_UART_BASE) == false) {
                break;
            } else {
                UARTCharPutNonBlocking(DEBUG_UART_BASE, buffer_get());
            }
        }
    }

    // else - should probably set a flag to indicate spurious interrupt
}


/* Queue a character for transmission. The software buffer is used as an
 * extension of the UART peripheral's hardware FIFO.
 */
static void debug_uart_putc(unsigned char c)
{
    if (buffer_is_empty() && UARTSpaceAvail(DEBUG_UART_BASE))
        UARTCharPutNonBlocking(UART0_BASE, c);
    else {
        while (buffer_is_full())
            ; // Wait. The buffer should be sized so that this is rare.
        buffer_put(c);
        UARTIntEnable(DEBUG_UART_BASE, UART_INT_TX);
    }
}

/* Configure the UART peripheral. Receive functionality is not used.
 */
static void debug_uart_setup(void)
{
    MAP_SysCtlPeripheralEnable(DEBUG_UART_SYSCTL_PERIPH);
    UARTConfigSetExpClk(DEBUG_UART_BASE, system_get_sysclk_freq(),
                        DEBUG_UART_BAUD, DEBUG_UART_CONFIG);

    UARTFIFOLevelSet(DEBUG_UART_BASE, UART_FIFO_TX1_8, UART_FIFO_RX7_8);
    UARTFIFOEnable(DEBUG_UART_BASE);

    UARTIntRegister(DEBUG_UART_BASE, debug_uart_ISR);
}


/******************************************************************************
 * Logging task
 *****************************************************************************/

/* Log requests are sent to the logging task via this queue, which is initialized
 * by the system thread during startup.
 */
QueueHandle_t log_msg_queue;

/* Queue a message for printing by the logging task. Return TRUE if the
 * message was queued, else FALSE.
 *
 * Do not call this function from an ISR!
 */
bool log_message(const char * str, int32_t arg0, int32_t arg1, int32_t arg2)
{
    struct log_msg msg;
    msg.str = str;
    msg.args[0] = arg0;
    msg.args[1] = arg1;
    msg.args[2] = arg2;

    return xQueueSend(log_msg_queue, &msg, 0);
}

/* Queue a message for printing by the logging task. Return TRUE if a higher
 * priority task was woken (e.g. a context switch is required). The calling
 * ISR should end with  portYIELD_FROM_ISR(task_woken);
 *
 * Only call this function from an ISR!
 */
int log_message_from_ISR(const char * str, int32_t arg0, int32_t arg1,
                          int32_t arg2)
{
    struct log_msg msg;
    msg.str = str;
    msg.args[0] = arg0;
    msg.args[1] = arg1;
    msg.args[2] = arg2;

    BaseType_t task_woken;
    xQueueSendFromISR(log_msg_queue, &msg, &task_woken);
    return task_woken;
}


void logger_task_code(void * arg)
{
    // set up
    (void) arg;
    debug_uart_setup();
    xdev_out(debug_uart_putc);

    xprintf("Logging Task Start\n");

    while (true) {
        struct log_msg msg;
        xQueueReceive(log_msg_queue, &msg, portMAX_DELAY);

        // Excess arguments will be safely ignored (C Standard sec. 7.19.6.1)
        xprintf(msg.str, msg.args[0], msg.args[1], msg.args[2]);
    }
}

