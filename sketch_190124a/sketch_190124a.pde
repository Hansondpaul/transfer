public Board ball = new Board(50,50);
void setup(){
 background(0);
 size(500,500);
 frameRate(60);
}

void draw(){
  ball.move();
}
