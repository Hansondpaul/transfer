Snow[] storm = new Snow[2000];
Tree test2;
Tree test3;
Tree test;
int i;

void setup()
{
  size (2000,1000);
  background(0);
  frameRate(120);
  test = new Tree(1000,950);
  test2 = new Tree(500,950);
  test3 = new Tree(1500,950);
  //snowflake assingnment
  for(int i = 0; i < storm.length; i++)
    {
    storm[i] = new Snow((int)(Math.random()*2000), (int)(Math.random()*-5000));
    }//forloop
  
}//setup

void draw(){
  background(0);
  for(i = 0; i < storm.length; i++)
    {
      storm[i].moveSnow();
    }//forloop
  test.drawTree();
  test2.drawTree();
  test3.drawTree();
  
}
