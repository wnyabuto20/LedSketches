import processing.io.*;
import java.util.*;

boolean ledOn = false;
color bg = 0;

void setup(){

GPIO.pinMode(2,GPIO.OUTPUT);
GPIO.pinMode(4,GPIO.OUTPUT);
GPIO.attachInterrupt(2,GPIO.FALLING);
GPIO.attachInterrupt(2,GPIO.RISING);
}

void draw(){

if(ledOn == true){
GPIO.digitalWrite(2,GPIO.HIGH);
GPIO.digitalWrite(4,GPIO.LOW);

background(bg);
}
else{
GPIO.digitalWrite(2,GPIO.LOW);
GPIO.digitalWrite(4,GPIO.HIGH);

background(bg);

}
}

void mouseClicked(){

ledOn = !ledOn;
}
void pinEvent(){
println("received interrupt on pin  " + pin);
if(bg == 0){
bg = color(255);
}
else{
bg = color(0);
}
}