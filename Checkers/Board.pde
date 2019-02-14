public class Board{
 public Board(){}
 
 public void drawBoard(){
   fill(#000000); noStroke();
  for(int i = 0; i < 11; i++){
    for(int j = 0; j < 11; j++) 
      if((j+i)%2==0) rect(j*100,i*100,100,100);
    
  }
 }
  
  
}
