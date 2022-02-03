#include <Arduino.h>

void setup()
{
  pinMode(PD4, OUTPUT);
}

void loop() 
{
  delay(1000);
  digitalWrite(PD4, !digitalRead(PD4));
}