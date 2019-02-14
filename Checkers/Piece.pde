public class Piece{
 private int rank;
 private int file;
 public boolean locked;
 public color side;
 public Piece(int a, int b, color d){
   rank = a; file = b; side = d;
 }
 
 public void drawPiece(){
   fill(side);
   ellipse(file*100-50,rank*100-50,100,100);
 }
 public void movePiece(int a, int b){
   file = a; rank = b;
 }
 
 public boolean inSpace(int x, int y){
   if(Math.abs(x-50) < Math.abs(file-50) && Math.abs(y-50) < Math.abs(rank-50))
     return true;
     return false;
 }
}
