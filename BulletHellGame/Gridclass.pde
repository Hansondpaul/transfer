public class Grid{
  public Grid()
  {
    stroke(#FF0000);
    for(int i = 100; i <= 1000; i += 100)
      line(0,i,1000,i);  
    for(int i = 100; i <= 1000; i += 100)    
      line(i,0,i,1000);    
  }
  
  public void colorGrid(color g)
  {
    stroke(g);
    for(int i = 100; i <= 1000; i += 100)
      line(0,i,1000,i);   
    for(int i = 100; i <= 1000; i += 100)    
      line(i,0,i,1000);    
  }





}
