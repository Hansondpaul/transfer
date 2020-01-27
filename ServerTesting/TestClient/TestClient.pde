import processing.net.*;

Client myClient;
int val;

void setup(){
 size(200,200);
 myClient = new Client(this,"10.9.131.4",5204);
}

void draw(){
 if(myClient.available() > 0){
  val = myClient.read();
 }
 background(val);
}
