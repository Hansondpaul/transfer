public class Bar{
 private int num;
 private int xPos;
 
 public Bar(int x){
   xPos = x;
   num = 0;
 }
 
 public int getNum(){
  return num; 
 }
 
 public void setNum(int newNum){
   num = newNum;
 }
 public void inc(){
  num++;
 }
 
 public void drawBar(){
     fill(num);
     rect(xPos, 500-num, 10, num);
 }
}
