public class Arrow implements Moveable{
  public int side;// the side of the screen the arrow shows up
  int x;
  int y;
  public Arrow(int i){
    side = i;
    switch(side)
    {
      case 0:
        x = 200; y = 0; break;
      case 1:
        x = 0; y = 200; break;
      case 2:
        x = 200; y = 400; break;
      case 3:
        x = 40; y = 200; break;
    }
  }
  
  public Arrow(int i, int b){
    side = i;
    switch(side)
    {
      case 0:
        x = 200; y = 0-10*b; break;
      case 1:
        x = 0-10*b; y = 200; break;
      case 2:
        x = 200; y = 400+10*b; break;
      case 3:
        x = 400+10*b; y = 200; break;
    }
  }
  
  public int getSide(){return side;}
  
  public void drawItem(){
    fill(#0000FF);
    ellipse(x,y,10,10);
  }
  
  public void moveItem(){
    switch(side)
    {
      case 0:
        y += 1; break;
      case 1:
        x += 1; break;
      case 2:
        y-= 1; break;
      case 3:
        x -= 1; break;
    }
  }
  
  public void reset(){
    side = (int)random(0,4);
    switch(side)
    {
      case 0:
        x = 200; y = 0; break;
      case 1:
        x = 0; y = 200; break;
      case 2:
        x = 200; y = 400; break;
      case 3:
        x = 400; y = 200; break;
    }
  }

  public void killItem(){}
}
