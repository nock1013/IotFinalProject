int R_pwm_pin=6;
int R_motorAF_pin=7;
int R_motorAR_pin=3;
int L_motorBF_pin=4;
int L_motorBR_pin=2;
int L_pwm_pin=5;

int motorpwm_val=0; 
// input

//Parameter
int Speed_L;
int Speed_R;
int current_vel;
int target_vel;

int status = 0;

void setup() {
  Serial.begin(9600);
  Serial1.begin(9600);
  //OUTPUT
  pinMode(L_motorBF_pin, OUTPUT);
  pinMode(L_motorBR_pin, OUTPUT);
  pinMode(R_motorAF_pin, OUTPUT);
  pinMode(R_motorAR_pin, OUTPUT);
  
  // Parameter Output initialize
  analogWrite(L_pwm_pin,0);
  analogWrite(R_pwm_pin,0);
  digitalWrite(L_motorBF_pin, LOW);
  digitalWrite(L_motorBR_pin, LOW);
  digitalWrite(R_motorAF_pin, LOW);
  digitalWrite(R_motorAR_pin, LOW);
  Speed_L=100;
  Speed_R=100;
  current_vel=80;
  target_vel=210;
  
  Serial.println("hello!");
}

void Motor(int LBF,int LBR, int RAF, int RAR){
  digitalWrite(L_motorBF_pin, LBF);
  digitalWrite(L_motorBR_pin, LBR);
  digitalWrite(R_motorAF_pin, RAF);
  digitalWrite(R_motorAR_pin, RAR);
}
void Foward(){
  Motor(HIGH,LOW,HIGH,LOW);
  Speed_L=current_vel;
  Speed_R=current_vel;
}
void Backward(){
  Motor(LOW,HIGH,LOW,HIGH);
  Speed_L=current_vel;
  Speed_R=current_vel;
}
void Stop(){  
  Motor(LOW,LOW,LOW,LOW);
  Speed_L=0;
  Speed_R=0;
}
void Left(){//왼뒤
  Motor(HIGH,LOW,HIGH,LOW);
  Speed_L=170;
  Speed_R=200;
}
void Right(){//오뒤
  Motor(HIGH,LOW,HIGH,LOW);
  Speed_L=200;
  Speed_R=170;
}

void Deceleration(){
   Motor(HIGH,LOW,HIGH,LOW);
   current_vel =current_vel-1;
   Speed_L = current_vel;
   Speed_R = current_vel;
  
}
void Acceleration(){
 Motor(HIGH,HIGH,LOW,LOW);
  current_vel =current_vel+1;
  Speed_L = current_vel;
  Speed_R = current_vel;
  
}
void Speed_set(){              
  analogWrite(L_pwm_pin,Speed_L);
  analogWrite(R_pwm_pin,Speed_R);
}


// the loop function runs over and over again forever
void loop() {
  // 블루투스 모듈 -> 아두이노 -> 시리얼 모니터
  if(Serial1.available()){ // 데이터 수신 대기
    delay(5);
    Serial.write(Serial1.read());
    Serial.println("Serial1 available in if");
  
  }
  if(Serial.available()){ // 시리얼 모니터 확인

    delay(5);
    Serial.println("Serial available in if");

    Serial1.write(Serial.read());  
    
  }
  //while(Serial1.available()){
  while(Serial1.available()>0){
    delay(1);
    Serial.println("Serial1 available in while");
    char myChar = Serial1.read();
    char def = myChar;
    if(myChar=='f'){
      status = 1;
      Serial.println("if까지는 들어옴");
      Serial.println("반복작업중?");
      while(status==1){
        if(current_vel<target_vel){
          Acceleration();
          Speed_set();
          Serial.print(current_vel);
          Serial.print(" CV<TV ");
          Serial.println(target_vel);
        }else if(current_vel==target_vel){
          Foward();
          Speed_set();
          Serial.print(current_vel);
          Serial.print("CV=TV");
          Serial.println(target_vel);
        }else{
          Deceleration();
          Speed_set();
          Serial.print(current_vel);
          Serial.print("CV>TV");
          Serial.println(target_vel);
        }
        Serial.println(myChar);
        myChar=Serial1.read();
        if(myChar=='s'||myChar=='b')break;
        Serial.println(myChar);
        }
        Serial.println(myChar);
        
        

    }
    if(myChar=='b'){
      Backward();
      Speed_set();
    }
    if(myChar=='s'){
      status = 2;
      Serial.println("s");
      Stop();
      Speed_set();
    }
    if(myChar=="left"){
      Left();
      Speed_set();
    }
    if(myChar=="right"){
      Right();
      Speed_set();
    }
    
    
    //Serial.println(myChar+millis());
  }
  /*if(Serial.available()>0){
    
    char data;
    data = Serial.read();
    
  }*/
}
