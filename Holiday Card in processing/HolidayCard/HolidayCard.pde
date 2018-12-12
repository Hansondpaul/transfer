Snow[] storm = new Snow[1000];
int i;

void setup()
{
  size (2000,1000);
  background(0);
  frameRate(60);
  
  for(int i = 0; i < storm.length; i++)
    {
    storm[i] = new Snow((int)(Math.random()*2000), (int)(Math.random()*-5000), 1);
    }//forloop
  
}//setup

void draw(){
  background(0);
  for(i = 0; i < storm.length; i++)
    {
      storm[i].moveSnow();
    }//forloop
  
  
}
