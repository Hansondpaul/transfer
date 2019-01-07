public class Snow{
  private Wind snow = new Wind((int)random(-2,2));
  private int x = 0;
  private int y = 0;
  private int alt = (int)random(900,1000);
  
  public Snow(int a, int b){
    x = a;
    y = b;
  }//constructor
  public Snow(int a, int b, int c){
    x = a; y = b; snow.speed = c;
  }
  
  public void setcoords(int a, int b){
    x = a;
    y = b;
  }
  public int getX(){
    return x;}
    
  public int getY(){
    return y;
  }
  
  public int getAlt(){
   return alt; 
  }
  void drawFlake(int c){
    ellipse(x-2.5,y-2.5,5,5);
    stroke(255);
    fill(c);
  }//drawFlake
  
  public void moveSnow(){
    drawFlake(255);
    y+=3;
    x+=snow.getSpeed();
    
    if(y==alt){}
    
    if(y>alt||x==0){
      y=0;
      x=(int)random(0,1000);
      snow.setSpeed((int)random(-2,2));
    }//if
  }//movesnow
  
  public void slidesnow(){
    x+=snow.getSpeed();
  }
  
}
