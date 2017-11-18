/*
 * system.c - Top-level management of controller configuration, status and faults
 *
 *  Created on: Jun 26, 2017
 *      Author: Oliver Douglas
 */

#include "system.h"
#include "can.h"
#include "debug.h"
#include "driverlib/rom_map.h"
#include "driverlib/sysctl.h"

#include <string.h>

// File index for ASSERT() macro
FILENUM(2)


typedef union {
    int i;
    float f;
} union32;

/*
 * TODO: read these from EEPROM instead of using default initializers.
 * (When making that change, these tables can become flash-resident backups
 * that are recovered when factory reset is activated.
 */
static union32 config_registers[NUM_CONFIG_REGISTERS] =
{
 [REG_CURRENT_KP].f = 1.00,
 [REG_CURRENT_KI].f = 0.10,
 [REG_CURRENT_KD].f = 0.10,
 [REG_VELOCITY_KI].f = 0.01,
 [REG_VELOCITY_KP].f = 0.01,
 [REG_VELOCITY_KD].f = 0.00,
 [REG_POSITION_KP].f = 0,
 [REG_POSITION_KI].f = 0,
 [REG_POSITION_KD].f = 0,

 [REG_CURRENT_DEADBAND].f = 0,
 [REG_VELOCITY_DEADBAND].f = 0,
 [REG_POSITION_DEADBAND].f = 0,

 [REG_MAX_CURRENT].f = 10,
 [REG_MAX_VOLTAGE].f = 24,
 [REG_MAX_MOTOR_TEMP].f = 100,
 [REG_MAX_HBRIDGE_TEMP].f = 100,
 //[REG_MAX_ACCEL_RATE].f = 0

 [REG_DRIVE_MODE] = DRIVE_ASYNC_SIGN_MAG,

 [REG_NODE_ID].i = 1,
 [REG_CAN_BAUD_RATE].i = 125000,
 [REG_UART_BAUD_RATE].i = 921600,
 [REG_SENSOR_LOG_ENABLES].i = 0x0,
};

static union32 state_registers[NUM_STATE_REGISTERS] =
{
 [REG_SYSTEM_STATE].i = STATE_CONFIG,
 [REG_FAULT_FLAGS].i = 0x0,
 [REG_CONTROL_MODE].i = CTRL_OPEN_LOOP,
 [REG_CONTROL_TARGET].f = 0,
};


/******************************************************************************
 * System fault management
 *****************************************************************************/
/*
void system_raise_fault(int fault)
{
  system_fault_flags |= 1 << fault;

  motor_shutdown();
  system_state = STATE_FAULTED;
  transmit_msg(MSG_FAULT, system_fault_flags);
}

void system_lower_fault(int fault)
{
  system_fault_flags &= ~(1 << fault);

  if (system_fault_flags == 0) {
    motor_power_up();
    system_state = STATE_RUNNING;
  }

  transmit_msg(MSG_OK);
}
*/

int system_get_state(void)
{
  return state_registers[REG_SYSTEM_STATE].i;
}

/* Graceful failure for indexes into cmd_table. This is used for commnads that
 * fall within the valid range [0, NUM_CMDS-1], but are only meant to be sent
 * by (rather than received by) a motor controller (ex: CMD_FAULT)
 */
static void invalid_cmd(uint8_t * args)
{
    // log error message
}

static void cmd_set_ref(uint8_t * args)
{
    state_registers[REG_CONTROL_TARGET].f = *(float *)args;
}

static void cmd_stop(uint8_t * args)
{
    state_registers[REG_CONTROL_MODE].i = CTRL_VELOCITY;
    state_registers[REG_CONTROL_TARGET].f = 0;

}

static void cmd_freewheel(uint8_t * args)
{
    // TODO: remove this?
    state_registers[REG_DRIVE_ENABLED].i = 0;
}

static void cmd_set_state(uint8_t * args)
{
    uint8_t index = args[0];
    if (index >= NUM_STATE_REGISTERS)
        ; // log error message
    else {
        switch(state_registers[REG_SYSTEM_STATE].i) {
        case STATE_CONFIG:
            memcpy(state_registers + index, args + 1, 4);
            // TODO: OK for client to clear fault flags like this?
            break;

        case STATE_RUNNING:

            break;

        case STATE_FAULTED:

            break;
        }
    }
    // TODO: OK for client to clear fault flags like this?
    // TODO: if client decides to enter config mode from drive mode,
    // need to stop motor, clear target value... ?
}

static void cmd_get_state(uint8_t * args)
{
    uint8_t index = args[0];
    if (index >= NUM_STATE_REGISTERS)
        ; // log error message
    else {
        struct can_msg msg;
        msg.can_cmd = CMD_RET_STATE;
        msg.data_len = 4;
        memcpy(msg.data, state_registers + index, 4);
        can_send(&msg);
    }
}

static void cmd_read_sensor(uint8_t * args)
{
    uint8_t index = args[0];
    if (index >= NUM_SENSORS)
        ; // log error message
    else {
        // TODO: read from sensors.c or encoder.c
        float val = 0;

        struct can_msg msg;
        msg.can_cmd = CMD_SENSOR_DATA;
        msg.data_len = 5;
        msg.data[0] = index;
        memcpy(msg.data + 1, &val, 4);
        can_send(&msg);
    }
}
static void cmd_set_config(uint8_t * args)
{
    if (state_registers[REG_SYSTEM_STATE].i != STATE_CONFIG)
        ; // log error message
    else {
        uint8_t index = args[0];
        if (index > NUM_CONFIG_REGISTERS)
            ; // log error message
        else
            memcpy(config_registers + index, args + 1, 4);
    }
}

static void cmd_get_config(uint8_t * args)
{
    uint8_t index = args[0];
    if (index > NUM_CONFIG_REGISTERS)
        ; // log error message
    else {
        struct can_msg msg;
        msg.can_cmd = CMD_RET_CONFIG;
        msg.data_len = 5;
        msg.data[0] = index;
        memcpy(msg.data + 1, state_registers + index, 4);
    }
}

static void cmd_node_online(uint8_t * args)
{
    struct can_msg msg;
    msg.can_cmd = CMD_NODE_ONLINE;
    msg.data_len = 0;
    can_send(&msg);
}

static void cmd_reset(uint8_t * args)
{
    /* TODO: should this really be a command?
     * if the device encounters a fatal error (e.g. hard fault), it's probably
     * best for it to log the error and reset immediately, instead of waiting
     * for the client...
     */
    SysCtlReset();
}

static void (* const cmd_table[])(uint8_t *) =
{
 [CMD_FAULT] = invalid_cmd,
 [CMD_SET_REF] = cmd_set_ref,
 [CMD_STOP] = cmd_stop,
 [CMD_FREEWHEEL] = cmd_freewheel,

 [CMD_SET_STATE] = cmd_set_state,
 [CMD_GET_STATE] = cmd_get_state,
 [CMD_RET_STATE] = invalid_cmd,

 [CMD_READ_SENSOR] = cmd_read_sensor,
 [CMD_SENSOR_DATA] = invalid_cmd,

 [CMD_SET_CONFIG] = cmd_set_config,
 [CMD_GET_CONFIG] = cmd_get_config,
 [CMD_RET_CONFIG] = invalid_cmd,

 [CMD_NODE_ONLINE] = cmd_node_online,
 [CMD_RESET] = cmd_reset
};

void system_task_code(void * arg)
{
    struct can_msg msg;

    /*
    while (1) {
        if (can_recv(&msg)) {
            can_send(&msg);
        }
        vTaskDelay(50);
    }
    */

    // TODO: allow multiple comms interfaces to be used.
    // Responses in cmd_xxx functions need to write to generic send() method,
    // ... could have a function pointer that gets pointed to uart_send(),
    //can_send(), etc.
    while (1) {
        // TODO: callback function / TaskNotify instead of polling
        if (can_recv(&msg)) {
            uint8_t index = msg.can_cmd;
            if (index > NUM_CMDS)
                ; // log error message
            else {
                void (*f)(uint8_t *) = cmd_table[index];
                ASSERT(f);
                f(msg.data);
            }

        }
        vTaskDelay(10);
    }
}


/******************************************************************************
 * System configuration
 *****************************************************************************/

static uint32_t sysclk_freq;

#define SYSCTL_CLOCK_CONFIG (SYSCTL_XTAL_25MHZ | SYSCTL_OSC_MAIN \
                             | SYSCTL_USE_PLL | SYSCTL_CFG_VCO_480)

void system_init_clocks(void)
{
    sysclk_freq = MAP_SysCtlClockFreqSet(SYSCTL_CLOCK_CONFIG, 120000000);
}

uint32_t system_get_sysclk_freq(void)
{
    return sysclk_freq;
}

int system_get_node_id(void)
{
    return 1;
}

/******************************************************************************
 * Motor control commands
 *****************************************************************************/
int system_get_control_mode(void)
{
    return state_registers[REG_CONTROL_MODE].i;
}

int system_get_drive_mode(void)
{
    return config_registers[REG_DRIVE_MODE].i;
}

float system_get_control_target(void)
{
    return state_registers[REG_CONTROL_TARGET].f;
}

int system_get_update_mode(void)
{
    return config_registers[REG_SENSOR_LOG_ENABLES].i;
}

/* TODO: This is supposed to be the 'normal' bus voltage, e.g. the average bus
 * voltage when regeneration is not occurring. However, the 'normal' bus
 * voltage changes with current supplied (battery resistance) and battery state
 * of charge, so this value must be updated periodically from average bus
 * voltage... but we should ignore samples of VBUS taken while in regen mode!
 *
 */
float system_get_bus_voltage(void)
{
    return 0;
}






/* Temporary crap - get rid of this!
 *
 *

#define CMD_BUF_LEN 40
#include "driverlib/uart.h"

char cmdbuf[CMD_BUF_LEN];


int atoi(const char * s)
{
    int sign = 1;
    int res = 0;

    if (*s == '-') {
        sign = -1;
        s++;
    }

    while (*s) {
        res = res*10 + *s - '0';
        s++;
    }

    return res * sign;
}


void process_cmd(void)
{
    if (cmdbuf[0] == 0 || cmdbuf[1] == 0)
        return;

    uint16_t cmd = cmdbuf[0] * 256 + cmdbuf[1];
    int arg = atoi(cmdbuf + 2);

    switch(cmd) {
    case 's' * 256 + 't':   // set target
    if (motor_control_mode == CTRL_VELOCITY)
        motor_target_value = arg * RPM_TO_RADS;
    else
        motor_target_value = arg;
    break;

    case 'c' * 256 + 'm':   // change mode
        if (arg == CTRL_OPEN_LOOP)
            motor_control_mode = CTRL_OPEN_LOOP;
        else if (arg == CTRL_CURRENT)
            motor_control_mode = CTRL_CURRENT;
        else if (arg == CTRL_VELOCITY)
            motor_control_mode = CTRL_VELOCITY;
        break;

    case 'h' * 256 + 'l':   // halt
        motor_target_value = 0;
    break;
    }
}

void system_task_code(void * arg)
{
    int index = 0;
    int c;

    while (1) {
        while ((c = UARTCharGetNonBlocking(UART3_BASE)) == -1)
            vTaskDelay(10);

        if (c == '\r') {
            cmdbuf[index] = '\0';
            process_cmd();
            index = 0;
        } else if (c == '\n') {
            ;
        } else {
            cmdbuf[index] = c;
            index++;
            if (index == CMD_BUF_LEN)
                index = 0;
        }
    }
*/
