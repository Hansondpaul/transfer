public Chara frisk = new Chara();
boolean[] keys = new boolean[128];
///Setup///
void setup()
{
  size(300,300);
  background(0);
}

///Draw///
void draw()
{
  background(0);
  drawLines();
  frisk.drawChara();
  if(keys['a'] == true) frisk.moveLeft();
  if(keys['d'] == true) frisk.moveRight();
  
}

///DrawLines///
public void drawLines()
{
  stroke(#FF00FF);
  line(0,100,300,100);
  line(0,150,300,150);
  line(0,200,300,200);
}

///keyPressed///
void keyPressed()
{
  keys[key] = true;
  if(keys['w'] == true) frisk.moveY(-1);
  if(keys['s'] == true) frisk.moveY(1);
}

///keyReleased///
void keyReleased(){
  keys[key] = false;
}
