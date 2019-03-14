public class Chara{
  int x = 150;
  int string = 1;
  int HP = 20;
  public Chara(){}
  
  ///DrawChara///
  
  public void drawChara(){
   fill(#FF00FF); 
   noStroke();
   ellipse(x, string*50+100,10,10);
  }
  
  ///Movement///
  public void moveLeft()
  {
    x--;
    if(x<5) x++;
  }
  public void moveRight()
  {
    x++;
    if(x>295) x--;
  }
  public void moveY(int i)
  {
    string += i; 
    if(string<0||string>2)
    string -= i;
  }
  
  ///HP///
  public void damage(int i)
  {
   HP -= i; 
  }
  public void heal(int i){}
}
