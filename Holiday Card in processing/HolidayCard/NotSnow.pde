public class Snow{
  Wind snow = new Wind((Math.random()*4)-2);
  private int x = 0;
  private int y = 0;
  public int cover = 0;
  public Snow(int a, int b){
    x = a;
    y = b;
  }//constructor
  
  void drawFlake(int c){
    ellipse(x,y,5,5);
    stroke(255);
    fill(c);
  }//drawFlake
  
  public void moveSnow(){
    if(snow.getSpeed()== 0) snow.editSpeed(5);
    drawFlake(255);
    if(x==0) snow.editSpeed(0.5);
    if(x==2000) snow.editSpeed(-0.5);
    y+=1;
    x+=snow.getSpeed();
    
    
    if(y>1000){
      cover++;
      y=0;
      snow.setSpeed((Math.random()*4)-2);
    }//if
  }//movesnow
  
}
