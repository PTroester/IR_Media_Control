#include <HID-Project.h>

#include <IRremote.h>
#include <IRremoteInt.h>

//#define READ_VALUES

#define IR_SENSOR 10

//IR-Codes der Fernbedienung
#define IR_VOL_UP 0xFFA857
#define IR_VOL_DOWN 0xFFE01F
#define IR_REV 0xFF22DD
#define IR_FWD 0xFF02FD
#define IR_PLAY 0xFFC23D
#define IR_SPACE 0xFF9867 //SPACE
#define IR_NEXT_SLIDE 0xFFE21D //Arrow Right
#define IR_PREV_SLIDE 0xFFA25D //Arrow Left
#define IR_START_PRES 0xFF629D //F5
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
  //Initialisieren des IR empfängers und ausgeben als USB-Tastatur
  pinMode(IR_SENSOR, INPUT);
  irrecv.enableIRIn();//IR Sensor starten
#ifndef READ_VALUES
  Consumer.begin();
  BootKeyboard.begin();
#endif
}

void loop() {
  if(irrecv.decode(&results))//recieved signal?
  {
    if(results.value != IR_HOLD)//gedrückt gehalten?
    {
      ir_new = results.value;
    }
    irrecv.resume();
#ifdef READ_VALUES
    Serial.println(results.value, HEX);
#else
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
        if(results.value != IR_HOLD)
        {
          Consumer.write(MEDIA_PLAY_PAUSE);
        }
        break;
      }
      case IR_NEXT_SLIDE:
      {
        if(results.value != IR_HOLD)
        {
          //Keyboard.write(KEY_RIGHT_ARROW);
          Keyboard.write(KEY_PAGE_DOWN);
        }
      }
      case IR_PREV_SLIDE:
      {
        if(results.value != IR_HOLD)
        {
         //Keyboard.write(KEY_LEFT_ARROW);
         Keyboard.write(KEY_PAGE_UP);
        }
      }
      case IR_START_PRES:
      {
        if(results.value != IR_HOLD)
        {
          Keyboard.write(KEY_F5);
        }
      }
      case IR_SPACE:
      {
        if(results.value != IR_HOLD)
        {
          Keyboard.write(' ');
        }
      }
      default:
      {
        break;
      }
    }
#endif
  }
  delay(100);
}


void loop() {
  if(irrecv.decode(&results))//signal erhalten?