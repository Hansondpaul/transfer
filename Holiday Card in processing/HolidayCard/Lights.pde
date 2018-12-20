public class Bulbs{
  private int x;
  private int y;
  private color z;
  color red1 = #FF0000;
  color blue1 = #0000FF;
  color yellow1 = #FFFF00;
 
  public Bulbs(int a, int b, int c)
  {
    if(c == 1) z = red1;
    if(c == 2) z = blue1;
    if(c == 3) z = yellow1;
    x=a;y=b;
  }
  public void drawBulb()
  {
    fill(192,192,192);
    stroke(0);
    rect(x-2,y-7,4,4);
    fill(z);
    stroke(0);
    ellipse(x,y,10,10);  
  }
  
}
