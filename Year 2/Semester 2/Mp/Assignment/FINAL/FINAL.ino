#include <LiquidCrystal.h> 
#include <String.h>

LiquidCrystal lcd(A4,A5,10,11,12,13);
//(RS,EN,4,5,6,7) on LCD Module

// Initializing Input and Output pins
int ip1 = 2;
int ip2 = 3;
int ip3 = 4;
int ip4 = 5;
int ip5 = 6;
int ip6 = 7;
int ip7 = 8;
int ip8 = 9;

int op1 = A0;
int op2 = A1;
int op3 = A2;
int op4 = A3;

String icType = "";
String icNum = "";

int option;

int Rled = 0;
int Gled = 1;

// ------------------------------------------------------------------

void setup() {
  Serial.begin(9600);
  lcd.begin(16, 2);
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("   IC Tester ");
  lcd.setCursor(0, 1);
  lcd.print("   MP PROJECT");
  
  //Setup Output LEDs
  pinMode(Rled,OUTPUT);
  pinMode(Gled,OUTPUT);

  digitalWrite(Rled, HIGH);
  digitalWrite(Gled, HIGH);
  
  delay(3000);
  
  digitalWrite(Rled, LOW);
  digitalWrite(Gled, LOW);

  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Enter Option: ");
  lcd.setCursor(0, 1);
  lcd.print("1:IC  2:GATE");

  Menu_Banner();
  
  while(Serial.available() == 0){
    
  }
  option = Serial.parseInt();

  switch (option) {
    case 1: {
      ICTester();
      break;
    }
    case 2: {
      GateTester();
      break;
    }
  }
}

// ------------------------------------------------------------------

void normalPinMode(){
  
    pinMode(ip1,OUTPUT); 
    pinMode(ip2,OUTPUT);
    pinMode(ip3,OUTPUT);
    pinMode(ip4,OUTPUT);
    pinMode(ip5,OUTPUT);
    pinMode(ip6,OUTPUT);
    pinMode(ip7,OUTPUT);
    pinMode(ip8,OUTPUT);
    
    pinMode(op1,INPUT);
    pinMode(op2,INPUT);
    pinMode(op3,INPUT);
    pinMode(op4,INPUT);  


    digitalWrite(ip1, LOW);//IC pin 1
    digitalWrite(ip2, LOW);//IC pin 2
    
    digitalWrite(ip3, LOW);//IC pin 4
    digitalWrite(ip4, HIGH);//IC pin 5
  
    digitalWrite(ip5, HIGH);//IC pin 9
    digitalWrite(ip6, LOW);//IC pin 10
  
    digitalWrite(ip7, HIGH);//IC pin 12
    digitalWrite(ip8, HIGH);//IC pin 13
}

// ------------------------------------------------------------------

void NORInputs(){
    pinMode(ip2,OUTPUT);
    pinMode(ip4,OUTPUT);
    pinMode(ip5,OUTPUT);
    pinMode(ip7,OUTPUT);
    pinMode(op1,OUTPUT);
    pinMode(op2,OUTPUT);
    pinMode(op3,OUTPUT);
    pinMode(op4,OUTPUT);
    
    pinMode(ip1,INPUT); 
    pinMode(ip3,INPUT);
    pinMode(ip6,INPUT);
    pinMode(ip8,INPUT);


    digitalWrite(ip2, LOW);
    digitalWrite(op1, LOW);
    
    digitalWrite(ip4, LOW);
    digitalWrite(op2, HIGH);
  
    digitalWrite(op3, HIGH);
    digitalWrite(ip5, LOW);
  
    digitalWrite(op4, HIGH);
    digitalWrite(ip7, HIGH);
}

// ------------------------------------------------------------------

int NORTester(){
  
    NORInputs();

    int a1 = digitalRead(ip1);
    int b1 = digitalRead(ip3);
    int c1 = digitalRead(ip6);
    int d1 = digitalRead(ip8);

    int check = ((8*a1)+(4*b1)+(2*c1)+d1);

    if (check == 8){
      icType = "NOR";  
      icNum = "7402";
      return 1;
    }

    return 0;
}

// ------------------------------------------------------------------

void NOTInputs(){
    pinMode(ip1,OUTPUT); 
    pinMode(op1,OUTPUT);
    pinMode(ip4,OUTPUT);
    pinMode(ip5,OUTPUT);
    pinMode(op4,OUTPUT);
    pinMode(ip8,OUTPUT);
    
    pinMode(ip2,INPUT);
    pinMode(ip3,INPUT);
    pinMode(op2,INPUT);
    pinMode(op3,INPUT);
    pinMode(ip6,INPUT);
    pinMode(ip7,INPUT);

    digitalWrite(ip1, HIGH);
    digitalWrite(op1, HIGH);

    digitalWrite(ip4, LOW);
    digitalWrite(ip5, LOW);

    digitalWrite(op4, HIGH);
    digitalWrite(ip8, HIGH);
}

// ------------------------------------------------------------------

int NOTTester(){

    NOTInputs();
    int a1 = digitalRead(ip2);
    int b1 = digitalRead(ip3);
    int c1 = digitalRead(op2);
    int d1 = digitalRead(op3);
    int e1 = digitalRead(ip6);
    int f1 = digitalRead(ip7);
    
    int check = ((32*a1)+(16*b1)+(8*c1)+(4*d1)+(2*e1)+f1);
    
    if (check == 12){
      icType = "NOT";
      icNum = "7404" ;
      return 1;
    }

    return 0;
}

// ------------------------------------------------------------------

void TypeTest() { //Function to find the type of IC
  
  int flag;
  flag = NORTester();

  if (flag){
    return;
  }
  
  flag = NOTTester();

  if (flag) {
    return;
  }

  normalPinMode();
  
  //Read the output of the Gates
  int a = digitalRead(op1);
  int b = digitalRead(op2);
  int c = digitalRead(op3);
  int d = digitalRead(op4);
  int checker = ((8*a)+(4*b)+(2*c)+d);

  //Gate Detection
  if (checker==1){
    icType = "AND";
    icNum = "7408/09" ;
  } else if (checker==7){
    icType = "OR"; 
    icNum = "7432" ;
  } else if (checker==14){
    icType = "NAND"; 
    icNum = "7400/01/03";
  } else if (checker==6){
    icType = "XOR"; 
    icNum = "7486";
  } else if (checker==9){
    icType = "XNOR"; 
    icNum = "74266/810" ;
  } else if (checker==0){
    icType = "none";
    icNum = "error" ; 
  } else {
    icType = "fault";
    icNum = "error";  
  }
}

// ------------------------------------------------------------------

void printType(String temptype,String tempnum){ //Print the output on the LCD screen
  
  if (temptype=="none"){
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print(" ERROR ALERT !! ");
      Serial.print("\n\n\tERROR ALERT !! ");
      lcd.setCursor(0,1);
      lcd.print("No IC Detected ");
      Serial.print("\n\tNo IC Detected!");
      loopred(); 
  } 
  else if (temptype=="fault"){
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print(" ERROR ALERT !! ");
      Serial.print("\n\n\tERROR ALERT !!");
      lcd.setCursor(0,1);
      lcd.print("  IC is Faulty!  ");
      Serial.print("\n\tIC is Faulty!");
      loopred(); 
  } 
  else {
      lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("  IC: "+tempnum+"   ");
      Serial.print("\n\tIC: " + tempnum);
      Serial.print("\n\tGate: " + temptype);
      lcd.setCursor(0,1);
      lcd.print("  Gate: "+temptype+"  ");
      green();  
  }
}

// ------------------------------------------------------------------

void ICTester(){
  TypeTest();
  printType(icType,icNum);
}

// ------------------------------------------------------------------

void GateTester() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("IC NUMBER: ");
  Serial.println("\n\tIC NUMBER :");
  Serial.read();
  while (Serial.available() == 0) {
    
  }
  int icn = Serial.parseInt();
  GateTest(icn);
}

// ------------------------------------------------------------------

void red() { // Red Led Switching
  digitalWrite(Rled, HIGH);
  digitalWrite(Gled, LOW);
}

// ------------------------------------------------------------------

void green() { // Green LED switching
  digitalWrite(Gled, HIGH);
  digitalWrite(Rled, LOW);
}

// ------------------------------------------------------------------

void loopred() { //Red LED Blinking alert
  while (true) {
    green();
    delay(1000);
    digitalWrite(Gled, LOW);
    delay(1000);
  }
}

// ------------------------------------------------------------------

void NORGateTest(){

    String ok = "";
    String notokay = "";
    
    NORInputs();

    int a1 = digitalRead(ip1);
    int b1 = digitalRead(ip3);
    int c1 = digitalRead(ip6);
    int d1 = digitalRead(ip8);

    if (a1 == 1){
      ok += "1, ";
      Serial.println("\tGate 1 OK");
    } else {
      notokay += "1, ";
      Serial.println("\tGate 1 Not OK");
    }
    if (b1 == 0){
      ok += "2, ";
      Serial.println("\tGate 2 OK");
    } else {
      notokay += "2, ";
      Serial.println("\tGate 2 Not OK");
    }
    if (c1 == 0){
      ok += "3, ";
      Serial.println("\tGate 3 OK");
    } else {
      notokay += "3, ";
      Serial.println("\tGate 3 Not OK");
    }
    if (d1 == 0){
      ok += "4";
      Serial.println("\tGate 4 OK");
    } else {
      notokay += "4";
      Serial.println("\tGate 4 Not OK");
    }

    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("OK: " + ok);
    lcd.setCursor(0, 1);
    lcd.print("FAULTY: " + notokay);
}

// ------------------------------------------------------------------

void NOTGateTest(){

    String ok = "";
    String notokay = "";
    
    NOTInputs();

    int a1 = digitalRead(ip2);
    int b1 = digitalRead(ip3);
    int c1 = digitalRead(op2);
    int d1 = digitalRead(op3);
    int e1 = digitalRead(ip6);
    int f1 = digitalRead(ip7);

    if (a1 == 0){
      ok += "1,";
      Serial.println("\tGate 1 OK");
    } else {
      notokay += "1,";
      Serial.println("\tGate 1 Not OK");
    }
    if (b1 == 0){
      ok += "2,";
      Serial.println("\tGate 2 OK");
    } else {
      notokay += "2,";
      Serial.println("\tGate 2 Not OK");
    }
    if (c1 == 1){
      ok += "3,";
      Serial.println("\tGate 3 OK");
    } else {
      notokay += "3,";
      Serial.println("\tGate 3 Not OK");
    }
    if (d1 == 1){
      ok += "4,";
      Serial.println("\tGate 4 OK");
    } else {
      notokay += "4,";
      Serial.println("\tGate 4 Not OK");
    }
    if (e1 == 0){
      ok += "5,";
      Serial.println("\tGate 5 OK");
    } else {
      notokay += "5,";
      Serial.println("\tGate 5 Not OK");
    }
    if (f1 == 0){
      ok += "6";
      Serial.println("\tGate 6 OK");
    } else {
      notokay += "6";
      Serial.println("\tGate 6 Not OK");
    }

    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("OK: " + ok);
    lcd.setCursor(0, 1);
    lcd.print("FAULTY:" + notokay);
}

// ------------------------------------------------------------------

void GateTest(int num) { 

  
  if (num == 7402){
    NORGateTest();
    return;
  }

  if (num == 7404){
    NOTGateTest();
    return;
  }

  String ok = "";
  String notokay = "";
  
  normalPinMode();
  
  int a = digitalRead(op1);
  int b = digitalRead(op2);
  int c = digitalRead(op3);
  int d = digitalRead(op4);

  if (num == 7408) {
    
    if (a==0){
      ok += "1, ";
      Serial.println("\tGate 1 OK");
    } else {
      notokay += "1, ";
      Serial.println("\tGate 1 Not OK");
    }
    if (b==0){
      ok += "2, ";
      Serial.println("\tGate 2 OK");
    } else {
      notokay += "2, ";
      Serial.println("\tGate 2 Not OK");
    }
    if (c==0){
      ok += "3, ";
      Serial.println("\tGate 3 OK");
    } else {
      notokay += "3, ";
      Serial.println("\tGate 3 Not OK");
    }
    if (d==1){
      ok += "4";
      Serial.println("\tGate 4 OK");
    } else {
      notokay += "4";
      Serial.println("\tGate 4 Not OK");
    }
  } else if (num == 7432) {
  
    if (a==0){
      ok += "1, ";
      Serial.println("\tGate 1 OK");
    } else {
      notokay += "1, ";
      Serial.println("\tGate 1 Not OK");
    }
    if (b==1){
      ok += "2, ";
      Serial.println("\tGate 2 OK");
    } else {
      notokay += "2, ";
      Serial.println("\tGate 2 Not OK");
    }
    if (c==1){
      ok += "3, ";
      Serial.println("\tGate 3 OK");
    } else {
      notokay += "3, ";
      Serial.println("\tGate 3 Not OK");
    }
    if (d==1){
      ok += "4";
      Serial.println("\tGate 4 OK");
    } else {
      notokay += "4";
      Serial.println("\tGate 4 Not OK");
    }
  } else if (num == 7400) {
   
    if (a==1){
      ok += "1, ";
      Serial.println("\tGate 1 OK");
    } else {
      notokay += "1, ";
      Serial.println("\tGate 1 Not OK");
    }
    if (b==1){
      ok += "2, ";
      Serial.println("\tGate 2 OK");
    } else {
      notokay += "2, ";
      Serial.println("\tGate 2 Not OK");
    }
    if (c==1){
      ok += "3, ";
      Serial.println("\tGate 3 OK");
    } else {
      notokay += "3, ";
      Serial.println("\tGate 3 Not OK");
    }
    if (d==0){
      ok += "4";
      Serial.println("\tGate 4 OK");
    } else {
      notokay += "4";
      Serial.println("\tGate 4 Not OK");
    }
  } else if (num == 7486) {
    
    if (a==0){
      ok += "1, ";
      Serial.println("\tGate 1 OK");
    } else {
      notokay += "1, ";
      Serial.println("\tGate 1 Not OK");
    }
    if (b==1){
      ok += "2, ";
      Serial.println("\tGate 2 OK");
    } else {
      notokay += "2, ";
      Serial.println("\tGate 2 Not OK");
    }
    if (c==1){
      ok += "3, ";
      Serial.println("\tGate 3 OK");
    } else {
      notokay += "3, ";
      Serial.println("\tGate 3 Not OK");
    }
    if (d==0){
      ok += "4";
      Serial.println("\tGate 4 OK");
    } else {
      notokay += "4";
      Serial.println("\tGate 4 Not OK");
    }
  } else {
    Serial.println("\tInvalid Input");
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Invalid Input");
    return;
  }

  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("OK: " + ok);
  lcd.setCursor(0, 1);
  lcd.print("FAULTY: " + notokay); 
}

// ------------------------------------------------------------------

void Menu_Banner(){
  Serial.println("\t\tIC TESTER\n");
  Serial.println("\n\n\t1: IC Tester");
  Serial.println("\n\t2: Faulty Gate Checker");
  Serial.println("\n\n\tEnter Option: ");
}

// ------------------------------------------------------------------

void loop()
{

}

// ------------------------------------------------------------------
