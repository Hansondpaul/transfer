public class Chara
{
  public int mode = 0;
  public int x;
  public int y;
  
  public Chara(int a, int b)
  {
    x=a; y=b;
  }
  public void modCoords(int a, int b)
  {
    x=a; y=b;
  }
  
  public void drawChara()
  {
    noFill();
    stroke(#00FFFF);
    rect(x-20,y-20,40,40);
  }
}
