public Player ship;
public int moveflag;
void setup(){
  size(300,300);
  background(0);
  ship = new Player(150,250);
}

void draw(){
  background(0);
  ship.drawPlayer();
  ship.drawLOS();
  
}

void keyPressed(){
  if(key == 'a') ship.move(-5);
  if(key == 'd') ship.move(5);
}

void keyReleased(){
  
}
