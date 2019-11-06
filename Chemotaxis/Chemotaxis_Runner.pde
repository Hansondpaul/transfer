Cell test;

public void settings(){
  size(600,600);
}
void setup(){
 test = new Cell();
 background(255);
}

void draw(){
 background(255);
 test.drawCell(); 
}
