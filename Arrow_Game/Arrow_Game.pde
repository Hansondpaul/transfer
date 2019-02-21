public PlayerChara test = new PlayerChara();
public ArrayList<Arrow> arrows = new ArrayList<Arrow>();

void setup(){
 size(400,400);
 background(0);
 frameRate(140);
 for(int i = 0; i < 19; i++){
   arrows.add(new Arrow((int)random(0,4),i));
   System.out.println(arrows.size());
 }
}

void draw(){
  background(0);
  
  test.moveItem();
  test.drawItem();
  
  for(int i = 0; i < arrows.size(); i++)
   {
     arrows.get(i).moveItem();
     arrows.get(i).drawItem();
     if(arrows.get(i).x == test.x && arrows.get(i).y == test.y) arrows.get(i).reset();
   }
}

void keyPressed(){
switch(key)
    {
      case 'w':
        test.side = 0;
        break;
      case 's':
        test.side = 2;
        break;
      case 'a':
        test.side = 1;
        break;
      case 'd':
        test.side = 3;
        break;
      case 'f':
        arrows.get(0).y = 199;
        break;
    }

}
