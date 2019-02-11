public class Player{
  int x;
  int y;
  int rotate;
  int fireflag;
  
  public Player(int a, int b){x = a; y = b;}
  
  public void drawPlayer(){
    stroke(255);
    noFill();
    quad(x,y-10,x-10,y+10,x,y+5,x+10,y+10);
  }
  
  public void drawLOS(){
    stroke(#FF0000);
    line(x,y,x,0);
  }
  
  public void move(int a){
    if(x>0 || x<300) x+=a*2;
    if(x == 0) x = 1;
    if(x == 300) x = 299;
  }
}
