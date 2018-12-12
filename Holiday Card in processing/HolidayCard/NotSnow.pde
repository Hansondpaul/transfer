public class Snow{
  private int x = 0;
  private int y = 0;
  private int xmom = 1;
  public int cover = 0;
  public Snow(int a, int b, int c){
    x = a;
    y = b;
    xmom = c;
  }//constructor
  void drawFlake(int c){
    ellipse(x,y,5,5);
    stroke(0);
    fill(c);
  }
  public void moveSnow(){
    drawFlake(255);
    
    y+=1;
    x+=xmom;
    xmom *=-1;
    
    drawFlake(0);
    if(y>1000){
      cover++;
      y=0;
    }
  }
}
