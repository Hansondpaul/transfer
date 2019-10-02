float leg; //the distance traveled left or right each time the lightning draws a segment
float travel; //the distance traveled virticaly every time the lightning draws a segment

PVector startPoint; // the point at the top of the screen started at for each bolt
PVector currentPoint; // the point that the program is drawing from curently

boolean left; //true if bolt's next segment draws to the left
color flash; // the color of the bolt and bars

public Bar[] bars; // the graph at the botom of the screen

void setup() {
  frameRate(120); // the speed of the program per second
  size(500, 500);  //the window size
  background(0); //the background is black
  
  startPoint = new PVector(255, 0); //the top middle of the screen is the starting point
  currentPoint = new PVector(startPoint.x, startPoint.y); 
  //this starts off the same, but changes later
  
  leg = 10; //the bolt will always draw in segments traveling ten to the left or right.
  travel = 15; //the virtical increment is 15 pixels
  left = true; //this defaults to true.
  
  flash = #FFFF00; //the yellow color
  
  bars = new Bar[50];
  for (int i = 0; i < 50; i++) { //every single bar
    bars[i] = new Bar(i*10); //is set up to be 10 px apart
  }
}

void draw() {
  for (Bar b : bars) { 
    b.drawBar();
    if(b.getNum() > 255) reset(); //reset the bars' heights if one of them is taller then half the screen.
  }//draw every bar
  
  stroke(flash);//set the line color to yellow
  line(currentPoint.x, currentPoint.y, currentPoint.x+leg, currentPoint.y+travel); // draw the line
  
  currentPoint.x += leg;
  currentPoint.y += travel;
  //update the point to draw from the end of the last segment drawn
  
  if (Math.random()>0.5) // there is a 50% chanse left is set to true
    left = false; 
  else left = true;
  
  if (left) // if left is set to true, invert the direction the lightning will reverse
    leg = leg * -1;
    
  if (currentPoint.y>=500) { //when lightning strikes,
    bars[(int)(currentPoint.x)/10].inc(); //increment the bar that was struck to increase it's size,
    currentPoint = new PVector(startPoint.x,startPoint.y);//and start the striking process again.
    background(0); // erase the old lightning bolt
  }
}

public void reset(){
 bars = new Bar[50]; //reset evrey bar
 for (int i = 0; i < 50; i++) {
    bars[i] = new Bar(i*10); 
  }
 System.out.println("Time to reset!");
  
}
