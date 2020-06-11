#include<Servo.h>
#define gas A0
#define temp_analog A1
#define flame A2
Servo servo;
int data;
int servo_value;
int target_temp;
int temp_value;
int temp;
int flame_state = 0;
int gas_state;
int status;
int LED_green = 9;
int LED_red = 10;
int LED_flame = 7;
int LED_yellow = 11;


 
void setup() {
  // put your setup code here, to run once:
  servo.attach(8);
  pinMode(LED_green,OUTPUT);
  pinMode(LED_red,OUTPUT);
  pinMode(LED_yellow,OUTPUT);
  pinMode(flame,INPUT);
  pinMode(LED_flame,OUTPUT);
 
  Serial.begin(9600);
  servo_value = 0;
  servo.write(servo_value); 
  target_temp=10;
  data = 2006;
  
}


void servo_start(){
  servo_value = 90;
  servo.write(servo_value);
}


void servo_stop(){
  servo_value = 0;
  servo.write(servo_value);
}


void loop_temp() {
    temp_value = analogRead(temp_analog);
    temp=temp_value/2;
    Serial.println(temp);
     if(temp_value<target_temp-5){
          digitalWrite(LED_red,HIGH);
          digitalWrite(LED_green,LOW);
          flame_sensor();     
        }
      else if(temp_value>target_temp+5){
          digitalWrite(LED_green,HIGH);
          digitalWrite(LED_red,LOW);   
          flame_sensor();  
      }
      else{
          digitalWrite(LED_red,LOW);
          digitalWrite(LED_green,LOW);
          flame_sensor();     
      } 
 }

 void flame_sensor(){
  flame_state = digitalRead(flame);
  if(flame_state == 1){
    digitalWrite(LED_flame,HIGH);
    Serial.println("1");
  }
  else if(flame_state == 0){
    digitalWrite(LED_flame,LOW);
    Serial.println("0");
  }
 }
 void door(){
  if(data==5005){
    servo_start();
  }else if(data==5004){
    servo_stop();
  }
  if(Serial.available()>0){
    data = Serial.parseInt();
  }
  
 }
 void gas_sensor(){
  gas_state = analogRead(gas);
  if(gas_state <= 300){
    Serial.println("3");
  }
  else if(gas_state > 300){
    Serial.println("2");  
  }
 }

 
void loop(){
  if(Serial.available()>0){
    if(data==2006){
      data = Serial.parseInt();
    }
    status=3000;
    if(data == 2007){
       digitalWrite(LED_yellow,HIGH);
       while(status==3000){
        data = Serial.parseInt();
        if(data<1000&&data>0){
          target_temp = data;
        }else if(data==5004||data==5005){
          door();
        }
        gas_sensor();
        loop_temp();
        if(data==2006)break;
       }
     }
     if(data == 2006){
      status=3002;
      digitalWrite(LED_yellow,HIGH);                                                                           
      digitalWrite(LED_green,LOW);
      digitalWrite(LED_red,LOW);
      digitalWrite(LED_yellow,LOW);
      while(status==3002){
        door();
        if(data==2007){
          break;
        }
      }
      Serial.println(data);
     }
     
    }
}
