public class PlayerChara implements Moveable{
  int x;
  int y;
  int side = 0;
  
  public PlayerChara(){
    x = 200;
    y = 200;
  }
  public int getSide(){return 0;};
  
  public void drawItem(){
    fill(255);
    noStroke();
    rect(x-5,x-5,10,10);
    stroke(#FF0000);
    switch(side){
      case 0:
        line(x-10,y-10,x+10,y-10);
        break;
      case 1:
        line(x-10,y-10,x-10,y+10);
        break;
      case 2:
        line(x-10,y+10,x+10,y+10);
        break;
      case 3:
        line(x+10,y-10,x+10,y+10);
        break;
    }
    
  }
  
  public void moveItem(){
  }
  
  public void killItem(){}
}
