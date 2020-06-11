#define vol_analog A0
#define temp_analog A1
#define echo A2
#define trig A3

int R_pwm_pin=6;
int R_motorAF_pin=7;
int R_motorAR_pin=3;
int L_motorBF_pin=4;
int L_motorBR_pin=2;
int L_pwm_pin=5;
int crash_sensor = 11;
int data;


// input
int target_dis;
int target_vel;
int current_dis;
int current_vel;
//Parameter
int Speed_L;
int Speed_R;

void setup() {
  Serial.begin(9600);
  //output
  pinMode(L_motorBF_pin, OUTPUT);
  pinMode(L_motorBR_pin, OUTPUT);
  pinMode(R_motorAF_pin, OUTPUT);
  pinMode(R_motorAR_pin, OUTPUT);
  pinMode(trig, OUTPUT);
  //input
  pinMode(echo, INPUT);
  pinMode(vol_analog,INPUT);
  pinMode(crash_sensor,INPUT);
  // parameter output initialize
  analogWrite(L_pwm_pin,0);
  analogWrite(R_pwm_pin,0);
  digitalWrite(L_motorBF_pin, LOW);
  digitalWrite(L_motorBR_pin, LOW);
  digitalWrite(R_motorAF_pin, LOW);
  digitalWrite(R_motorAR_pin, LOW);
  Speed_L=100;
  Speed_R=100;
  current_vel = 100;
  target_vel = 150; 
  target_dis = 50;
  current_dis =120;
}
void Motor(int LBF,int LBR, int RAF, int RAR){
  digitalWrite(L_motorBF_pin, LBF);
  digitalWrite(L_motorBR_pin, LBR);
  digitalWrite(R_motorAF_pin, RAF);
  digitalWrite(R_motorAR_pin, RAR);
}
void Speed_set(){              
  analogWrite(L_pwm_pin,Speed_L);
  analogWrite(R_pwm_pin,Speed_R);
}
void Forward(){
  Motor(HIGH,LOW,HIGH,LOW);
  Speed_L = current_vel;
  Speed_R = current_vel;
}
void Backward(){
Motor(HIGH,LOW,HIGH,LOW);
}
void Stop(){
 Motor(HIGH,LOW,HIGH,LOW);
  Speed_L = 0;
  Speed_R = 0;
}
void Deceleration(){
   Motor(HIGH,LOW,HIGH,LOW);
   current_vel =current_vel-10;
   Speed_L = current_vel;
   Speed_R = current_vel;
  
}
void Acceleration(){
 Motor(HIGH,LOW,HIGH,LOW);
  current_vel =current_vel+5;
  Speed_L = current_vel;
  Speed_R = current_vel;
  
}
void distance(){
  digitalWrite(trig,HIGH);
  delayMicroseconds(10);
  digitalWrite(trig,LOW);
  current_dis = pulseIn(echo,HIGH) * 17 /1000;
  Serial.println("distance()안에 들어옴");
}

void battery(){
  int vout = 0;
  int vin = 0;
  int R1 = 30000;
  int R2 = 7500;
  int vol_value = 0;
  vol_value = analogRead(vol_analog);
  vout = (vol_value * 5) / 1024;
  vin = vout / (R2 / (R1 + R2));
  Serial.print("battery");
  Serial.println(vin+4000);
}

void temp(){
  int temp_value;
  int temp;
   temp_value = analogRead(temp_analog);
   temp = temp_value/2;
   Serial.print("temp안에 들어옴");
   Serial.println(temp+3000);
}

void serial(){
  Serial.println("serial안에 들어옴");
  Serial.print("target_dis  in serial : ");
    Serial.println(target_dis);
  if(Serial.available()>0){
   data = Serial.parseInt();
    if(data>=1000){
     target_dis = data - 1000;
     Serial.print("target_dis  in serial : ");
     Serial.println(target_dis);
    }
    else if(data>=0&&data<1000){
     data = map(data,0,110,0,255);
     Serial.print("data 변환값: ");
     Serial.println(data);
     Serial.print("target_vel : ");
     Serial.println(target_vel);
      target_vel = data;
    }
    //data = Serial.parseInt();
    Serial.print("target_dis  in serial : ");
    Serial.println(target_dis);
  }
}
void crash(){
  int crash_val = digitalRead(crash_sensor);
  Serial.print("crash안에 들어옴");
  Serial.println(crash_val);
}
void loop() {
  /*if(Serial.available()>0){
    char data;
    data=Serial.read();
    if(data=='F'){
      Serial.println("시작");*/
      int data;
      distance();
      Serial.print("target_dis : ");
        Serial.println(target_dis);
      while(1){
        Serial.print("target_dis : ");
        Serial.println(target_dis);
        distance();
        serial();
        crash();       
        Serial.println("while문실행중");
        Serial.print("target_vel : ");
        Serial.println(target_vel);
        Serial.print("target_dis : ");
        Serial.println(target_dis);
        if(current_dis<target_dis||current_dis>300||current_dis<5){
          Serial.println("1");
          crash();
          Serial.println("a");
          serial();
          Serial.println("b");
          Stop();
          Serial.println("1");
          Speed_set();
          Serial.println(current_vel);
          Serial.println(current_dis+1000);
          battery();
          temp();
         
        }else if(current_dis<target_dis){
          Serial.println("2");
          if(current_vel>=target_vel){
            Serial.println("3");
            crash();
            serial();
            Deceleration();
            Speed_set();
            Serial.println(current_vel);
            Serial.println(current_dis+1000);
             battery();
             temp();
           
          }else{
            Serial.println("4");
            crash();
            serial();
            Forward();
            Speed_set();
            Serial.println(current_vel);
            Serial.println(current_dis+1000);
             battery();
             temp();
            
          }
        }else if(current_dis==target_dis){
          Serial.println("5");
          if(current_vel<target_vel){
            Serial.println("6");
            crash();
            serial();
            Acceleration();
            Speed_set();
            Serial.println(current_vel);
            Serial.print(" CD=TD||CV<TV ");
            Serial.println(current_dis+1000);
             battery();
             temp();
           
          }else if(current_vel==target_vel){
            Serial.println("7");
            serial();
            Forward();
            Speed_set();
            Serial.println(current_vel);
           Serial.print(" CD=TD&&CV=TV ");
            Serial.println(current_dis+1000);
             battery();
             temp();
          
          }else{
            Serial.println("8");
            serial();
            Deceleration();
            Speed_set();
            Serial.println(current_vel);
            Serial.print(" CD=TD&&CV>TV ");
            Serial.println(current_dis+1000); 
             battery();
             temp();
          }
        }else if(current_dis>target_dis){
          if(current_vel<=target_vel){
            Serial.println("9");
            serial();
            Acceleration();
            Speed_set();
            Serial.println(current_vel);
           Serial.print(" CD>TD&&CV<=TV ");
            Serial.println(current_dis+1000);
             battery();
             temp();
            
          }else{
            Serial.println("10");
            serial();
            Forward();
            Speed_set();
            Serial.print(current_vel);
            Serial.print(" CD>TD&&CV>TV ");
            Serial.println(current_dis+1000);
            battery();
            temp();
          
          }
        }
        Serial.println("11");
        //data=Serial.read();
        delay(1500);
      }
      
 
}
