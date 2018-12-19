Snow[] storm = new Snow[2000];
Bulbs[] dec = new Bulbs[4] = {new Bulbs(480,585,2), new Bulbs(505,550,1), new Bulbs(505,600,3), new Bulbs(440,680,3)};
SnowCover gcolor = new SnowCover();
Bulbs ltest;
Bulbs l2;
Bulbs l3;
Bulbs l4;
Bulbs
Tree test2;
Tree test3;
Tree test;
int i;


void setup()
{
  size (1000,1000);
  background(0);
  frameRate(120);
  
  test = new Tree(500,850);
  
  //snowflake assingnment
  for(int i = 0; i < storm.length; i++)
    {
      storm[i] = new Snow( (int)random(0
      ,1000), (int)random(-5000,0))
    }
}
//////////////////////////////////////////////////////
void draw()
{
  background(0);//reset the background to erase previous flake locations
  drawGround();
  test.drawTree();
  drawBulbs();;for(i = 0; i < storm.length; i++)//for every snowflake
  {
      fill(255);
      storm[i].moveSnow(); //move them downward         
      groundcolor(); //and if the y position is at the bottom of the screen, incrament the cover counter
   }
}

/*//////////////////////////////////////////////////////
after this is just methods that are used to clean up the above code
//////////////////////////////////////////////////////*/

public void drawBulbs()//draws the bulb objects
{
  for(int i = 0; i < dec.length; i++){
    dec[i].drawBulb;
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
