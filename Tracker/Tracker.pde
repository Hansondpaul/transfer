boolean b=true;
int back=0;
int sizeOfSquare=20;
int i;
int j;
color c = #0000FF;
void setup() {
  size(500, 500);
}


void draw() {
  background(back);
  drawGrid();
  highlightSquare();
}

void drawGrid() {
  for(int i = 1; i <=500/sizeOfSquare; i++)
  {
    stroke(0,255,0);//forloop
    line(0,i*sizeOfSquare,500,i*sizeOfSquare);
  }
  for(int i = 1; i <=500/sizeOfSquare; i++){
    stroke(0,255,0);
    line(i*sizeOfSquare,0,i*sizeOfSquare,500);}//forloop
}//drawgridmethod

void highlightSquare() {
  for(i = 0; i <=500; i+=sizeOfSquare){
    for(j = 0; j <=500; j+=sizeOfSquare){
      if(mouseX>j && mouseX<j+sizeOfSquare && mouseY>i && mouseY<i+sizeOfSquare){
        fill(c);
        rect(j,i,sizeOfSquare,sizeOfSquare);
      }//if
    }//jforloop
  }//iforloop
}

void mouseClicked() {
  if (b==false){
    b = true;
    c = #FF0000;
  }
  else{
   b = false;
   c= #0000FF;
  }
}
