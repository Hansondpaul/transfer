public Grid red;
public Chara main = new Chara(500,900);
void setup(){
  size(1000,1000);
  background(0);
}

void draw()
{
  background(0);
  red = new Grid();
  main.drawChara();
}
public void keyPressed(){
  if (key == 'w') main.y--;
  if (key == 'a') main.x--;
  if (key == 's') main.y++;
  if (key == 'd') main.x++;
  
}
