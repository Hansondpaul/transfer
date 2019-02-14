public Board chess = new Board();
public Piece test = new Piece(2,1,#FFFFFF);
void setup(){
 size(800,800);
 background(#FF0000);
}

void draw(){
 chess.drawBoard();
 test.drawPiece();
 System.out.println(test.inSpace(mouseX,mouseY));
}
