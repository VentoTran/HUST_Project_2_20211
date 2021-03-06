#ifndef _PLC_H_
#define _PLC_H_
#include "stdint.h"
#include "string.h"
#include "stm32f1xx_hal.h"
#define PLC_RESPONSE_MESSAGE  (01)
#define PLC_ONOFF_MESSAGE     (02)
#define PLC_PWM_MESSAGE       (03)
#define PLC_REQUEST_CURRENT   (04)
#define PLC_ROOM_ADDR         (01)
#define PLC_DEVICE_ADDR       (01)
#define PLC_CHANNEL_01        (01)
#define PLC_CHANNEL_02        (02)
#define PLC_LEN_OF_MESSAGE    (8)
#define ON 1
#define OFF 0
#define PLC_RESPONSE_ERROR    (00)
#define PLC_RESPONSE_OK       (01)
typedef struct 
{
  uint8_t roomAddr:4;
  uint8_t deviceAddr:2;
  uint8_t channel:2;
} PLCDevice;

typedef struct 
{
  uint8_t channel_num;
  uint8_t onoff;
  uint16_t value;
  uint8_t messageType;
} lightChannel;

typedef struct 
{
  uint8_t messageType;
  uint16_t payload;
  PLCDevice device;
} PLCMessage;

void PLC_MessageGenerate(uint8_t* buffer, PLCMessage message);
HAL_StatusTypeDef PLC_MessageParser(uint8_t* buffer, PLCMessage* message);

#endif