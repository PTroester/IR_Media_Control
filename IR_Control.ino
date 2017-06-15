#include <HID-Project.h>

#include <IRremote.h>
#include <IRremoteInt.h>

#define IR_SENSOR 10

#define IR_VOL_UP 0xFFA857
#define IR_VOL_DOWN 0xFFE01F
#define IR_REV 0xFF22DD
#define IR_FWD 0xFF02FD
#define IR_PLAY 0xFFC23D
#define IR_HOLD 0xFFFFFFFF

IRrecv irrecv(IR_SENSOR);//erstelle IR-Empfänger
decode_results results;//erstelle Objekt für Empfangene IR Signale

unsigned long ir_new;

void setup()
{
  Serial.begin(9600);
  Serial.println("Booting...");
  Serial.end();
  delay(5000);
  //Initialisieren der pins, des servos, des IR empfängers, der seriellen Schnittstelle
  pinMode(IR_SENSOR, INPUT);
  irrecv.enableIRIn();//IR Sensor starten
  Consumer.begin();
  BootKeyboard.begin();
}

void loop() {
  if(irrecv.decode(&results))//recieved signal?
  {
    if(results.value != IR_HOLD)
    {
      ir_new = results.value;
    }
    irrecv.resume();
    //Serial.println(puffer, HEX);//Debug Message
    switch(ir_new)
    {
      case IR_VOL_UP:
      {
        Consumer.write(MEDIA_VOL_UP);
        break;
      }
      case IR_VOL_DOWN:
      {
        Consumer.write(MEDIA_VOL_DOWN);
        break;
      }
      case IR_REV:
      {
        Consumer.write(MEDIA_PREV);
        break;
      }
      case IR_FWD:
      {
        Consumer.write(MEDIA_NEXT);
        break;
      }
      case IR_PLAY:
      {
        Consumer.write(MEDIA_PLAY_PAUSE);
        break;
      }
      default:
      {
        break;
      }
    }
  }
  delay(10);
}
























