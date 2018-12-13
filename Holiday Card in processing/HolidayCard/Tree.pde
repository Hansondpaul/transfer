public class Tree{
  private int x;
  private int y;
  public Tree(int x1, int y1){
    x = x1;
    y = y1;
  }
  
  public void drawTree(){
    stroke(71, 36, 6);
    fill(71, 36, 6);
    rect(x-40,y-50,80,100);//trunk
    fill(42, 71, 9);
    stroke(42,71,9);
    triangle(x-150,y-50,x+150,y-50,x,y-200);//bottom triangle
    triangle(x-100,y-150,x+100,y-150,x,y-270);//next triange
    triangle(x-50,y-250,x+50,y-250,x,y-340);//top triangle
    
  }
  
  
}//class
