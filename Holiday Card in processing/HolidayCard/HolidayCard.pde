Snow[] storm = new Snow[1500];
Bulbs[] dec = {new Bulbs(480,585,2), new Bulbs(505,550,1), new Bulbs(505,600,3), new Bulbs(440,680,3), new Bulbs(480,650,1), new Bulbs(520,640,2),
new Bulbs(512, 678, 3), new Bulbs(475,695,2), new Bulbs(557,684,1), new Bulbs(538,716,2), new Bulbs(446,731,1), new Bulbs(495,741,3), new Bulbs(565,747,1),
new Bulbs(468,763,2), new Bulbs(406,782,3), new Bulbs(538,784,2)};

Star treetop;
SnowCover gcolor;
Bulbs ltest;
Tree test;
int i;
PFont font;
void setup()
{
  size (1000,1000);
  background(0);
  frameRate(120);

  font = createFont("YuppySC-Regular-60.vlw", 32);
  
  
  treetop = new Star(500,510);
  gcolor = new SnowCover();
  test = new Tree(500,850);
  //snowflake assingnment
  for(int i = 0; i < storm.length; i++)
    {
      storm[i] = new Snow( (int)random(0,1000), (int)random(-5000,0));
    }
}
//////////////////////////////////////////////////////
void draw()
{
  background(0);//reset the background to erase previous flake locations
  fill(255,0,0);
  textFont(font);
  text("Happy Hollidays!", 375, 300);
  drawGround();
  test.drawTree();
  treetop.drawStar();
  drawBulbs();
  for(i = 0; i < storm.length; i++)//for every snowflake
  {
      fill(255);
      storm[i].moveSnow(); //move them downward         
      groundcolor(); //and if the y position is at the bottom of the screen, incrament the cover counter
   }
  System.out.println(mouseX + "  " + mouseY);
}

/*//////////////////////////////////////////////////////
after this is just methods that are used to clean up the above code
//////////////////////////////////////////////////////*/

public void drawBulbs()//draws the bulb objects
{
  for(int i = 0; i < dec.length; i++){
    dec[i].drawBulb();
  }
}
//////////////////////////////////////////////////////
public void drawGround()//draws the ground
{
  setgroundfill();
  noStroke();
  rect(0,900,1000,100);
  //draw the rectangle at the botom of the screen
}
//////////////////////////////////////////////////////
public void setgroundfill()//sets the fill color of the ground
{
  fill( ( 42+gcolor.getCover() ), ( 71+gcolor.getCover() ), ( 9+gcolor.getCover() ) );
  //color of the ground is the ground cover variable plus the starting green ground
}
//////////////////////////////////////////////////////
public void groundcolor()
{
  if(storm[i].getY()==storm[i].getAlt()&&gcolor.getCover()<255){gcolor.moreSnow(1);}
}
//////////////////////////////////////////////////////
public void keyPressed()
{
  if (key == 'p') gcolor.setCover(0); //press p to shovel the snow
}
