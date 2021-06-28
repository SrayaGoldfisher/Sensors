
 int Anin0 = 0;                 
 int Anin1 = 1;                 
 int Anin2 = 2;                 
 int Anin3 = 3;                 
 int Anin4 = 4;                 
 int Anin5 = 5;                 
            

int v[6]={};

 void setup() {
     
  Serial.begin(9600);
 }


 void loop() {
     
  //setup for sample 1: 3 vcc 4 gound 
  pinMode(A0, INPUT); 
  pinMode(A1, INPUT);
  pinMode(A4, INPUT);
  pinMode(A5, INPUT);
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  digitalWrite(A2, HIGH); 
  digitalWrite(A3, LOW);     
  
  delay(10);
  v[0] = analogRead(Anin0);
  delay(10);  
  v[1] = analogRead(Anin1);   
  delay(10);  
  v[2] = 1023;             
  v[3] = 0;
  v[4] = analogRead(Anin4);   
  delay(10);             
  v[5] = analogRead(Anin5); 
  delay(10);



  for(int i=0;i<6;i++){
  while (Serial.available() < 1) 
  {} 
  Serial.read();  
  Serial.println(v[i]);
      
     
  }


  //setup for sample 2: 1 - vcc 6 - ground 
  
  pinMode(A1, INPUT); 
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  pinMode(A4, INPUT);
  pinMode(A0, OUTPUT);
  pinMode(A5, OUTPUT);
  digitalWrite(A0, HIGH);
  digitalWrite(A5, LOW);

  v[0] = 1023;   
  delay(10);             
  v[1] = analogRead(Anin1); 
  delay(10);
  v[2] = analogRead(Anin2); 
  delay(10);
  v[3] = analogRead(Anin3); 
  delay(10);
  v[4] = analogRead(Anin4);   
  delay(10);             
  v[5] = 0; 


  for(int i=0;i<6;i++){
  while (Serial.available() < 1) 
  {} 
  Serial.read();  
  Serial.println(v[i]);
      
     
  }

}

 

