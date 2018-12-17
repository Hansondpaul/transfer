Snow[] storm = new Snow[2000];
Tree test2;
Tree test3;
Tree test;
int i;
SnowCover gcolor = new SnowCover();

void setup()
{
  size (1000,1000);
  background(0);
  frameRate(120);
  
  test = new Tree(500,850);
  
  //snowflake assingnment
  for(int i = 0; i < storm.length; i++)
    {
    storm[i] = new Snow( (int)random(0,1000), (int)random(-5000,0));
    }//forloop
  
}//setup

void draw(){
  background(0);
  drawGround();
  test.drawTree();
  
  for(i = 0; i < storm.length; i++)
    {
      storm[i].moveSnow();
      
      if( storm[i].getY() == storm[i].getAlt() ){
        gcolor.moreSnow(1);
        
      }
      
    }//forloop
}//draw

public void drawGround(){
  fill( ( 42+gcolor.getCover() ), ( 71+gcolor.getCover() ), ( 9+gcolor.getCover() ) );
  noStroke();
  rect(0,900,1000,100);
}
