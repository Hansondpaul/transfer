public class Star
{
  private int x;
  private int y;
  private color starcolor = #f4e842;
  public Star(int a, int b)
  {
    x=a; y=b;
  }
  
  public void drawStar()
  {
    fill(starcolor);
    stroke(starcolor);
    triangle(x,y,x+30,y-20,x-30,y-20);
    triangle(x,y,x,y-40,x-20,y+10);
    triangle(x,y,x,y-40,x+20,y+10);
  }
}
