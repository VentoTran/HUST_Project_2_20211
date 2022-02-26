#include "plc.h"
#include "stdio.h"
#include "usart.h"
extern UART_HandleTypeDef huart1;
static HAL_StatusTypeDef PLC_MessageChecking(uint8_t* buffer)
{
    if ((buffer[0] != '$') || (buffer[1] != PLC_LEN_OF_MESSAGE))
    {
        return HAL_ERROR;
    }
    return HAL_OK;
}
static uint16_t PLC_getCRC16(uint8_t* data)
{
  uint16_t crc = 0xFFFF;
  uint8_t i;
  uint8_t len = 6;
  while (len--) {
      i = *data++;
      *(uint8_t *)&crc  ^= i;

      for (i = 0; i != 8; i++) {
          if (crc & 0x0001) {
              crc = (crc >> 1);
              crc ^= 0xA001;
          } else {
              crc = (crc >> 1);
          }
      }
  }
  return crc;
}
void PLC_MessageGenerate(uint8_t* buffer, PLCMessage message)
{
  
  buffer[0] = '$';
  buffer[1] = PLC_LEN_OF_MESSAGE;
  buffer[2] = message.messageType;
  buffer[3] = (message.device.roomAddr << 4 ) 
              | (message.device.deviceAddr << 2)
              | (message.device.channel);
  buffer[4] = (message.payload >> 8) & (0xFF);
  buffer[5] = (message.payload & 0xFF); 
  uint16_t crc = PLC_getCRC16(buffer);
  buffer[6] = (crc >> 8) & (0xFF);
  buffer[7] = (crc & 0xFF);
}

HAL_StatusTypeDef PLC_MessageParser(uint8_t* buffer, PLCMessage* message)
{
    if (PLC_MessageChecking(buffer) != HAL_OK)
    {
        return HAL_ERROR;
    }
    message->messageType = buffer[2];
    message->device.roomAddr = buffer[3] >> 4;
    message->device.deviceAddr = (buffer[3] >> 2) & 0x03;
    message->device.channel = buffer[3] & 0x03;
    message->payload = (buffer[4] << 8) | (buffer[5]);
    uint16_t crc = PLC_getCRC16(buffer);
    if (crc != ((buffer[6] << 8) | (buffer[7])))
    {
        return HAL_ERROR;
    }
    return HAL_OK;
}

void PLC_ResponseMessageGenerate(uint8_t* buffer, PLCMessage message)
{
  
  buffer[0] = '$';
  buffer[1] = PLC_LEN_OF_MESSAGE;
  buffer[2] = PLC_RESPONSE_MESSAGE;
  buffer[3] = (message.device.roomAddr << 4 ) 
              | (message.device.deviceAddr << 2)
              | (message.device.channel);
  buffer[4] = 0x00;
  buffer[5] = 0x01; 
  uint16_t crc = PLC_getCRC16(buffer);
  buffer[6] = (crc >> 8) & (0xFF);
  buffer[7] = (crc & 0xFF);
}



