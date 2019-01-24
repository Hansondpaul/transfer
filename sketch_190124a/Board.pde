public class Board{
 private int x;
 private int y;
 private int yv = 0;
 private int xv;
 public Board(int a, int b){
  x=a;y=b;
 }
 
 public void move(){
   y += yv;
   x += xv;
   if(y<450 && yv <= 0) yv-= 0.163;
   else if(y ==
 public void drawBall(){
   fill(#FF0000);
   noStroke();
   ellipse(x-10,y-10,20,20);
 }
 
}
