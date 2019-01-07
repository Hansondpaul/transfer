public Grid red;
Snow[] storm = new Snow[100];
public int blast = (int)(random(1,9)*100);
Snow blaster = new Snow(0,blast);
public Chara main = new Chara(500,900);
public boolean x1 = false;
public boolean x2 = false;
public boolean y1 = false;
public boolean y2 = false;
public boolean stringed = true;
public boolean stop = false;
public int score = 1000;


void setup(){
  size(1000,1000);
  background(0);
  frameRate(60);
  
  for(int i = 0; i < storm.length; i++)
    {
      storm[i] = new Snow( (int)random(0,1000), (int)random(-5000,0));
    }
    
}

void draw()
{
  
  for(int i = 0; i < storm.length; i++){
    if(Math.abs(main.x-storm[i].getX())<=15 && Math.abs(main.y-storm[i].getY())<=15){
      stop = true;}}
  
  if (stop == false){
    
    background(0);
    red = new Grid();
    move();
    main.drawChara();
  
    for(int i = 0; i < storm.length; i++)
     {
        fill(255);
        storm[i].moveSnow();      
     }
     
     if(score >= 1000)
     {
       blast();      
     }
     
   score+=1;
   
  }//if stop==false
  
  else
  
  {
    move();
    textSize(50);
    fill(255);
    text("Score =" + score, 10,60);
  }
  
}//draw

public void keyPressed()
{
  if (key == 'w')//if w is pressed
  {
    if(stringed == true && main.y >100) main.y-=100;
    else {y1 = true; y2 = false;}
  }
  
  if (key == 'a'){x1 = true; x2 = false;}//if a is pressed
  
  if (key == 's')// if s is pressed
  {
    if(stringed == true&&main.y<900) main.y+=100;
    else {y1 = false; y2 = true;}
  }
  
  if (key == 'd'){x2 = true; x1 = false;}//if d is pressed
}

public void keyReleased()
{
  if (key == 'a') x1 = false; 
  if (key == 'd') x2 = false;
  if (key == 'w') y1 = false;
  if (key == 's') y2 = false;
}

public void move()
{
  if(x1 == true && main.x>15) main.x-=5;
  if(x2 == true && main.x<1000-15) main.x+=5;
  if(stringed == false&&y1 == true) main.y-=5;
  if(stringed == false&&y2 == true) main.y+=5;
}

public void blast(){
  if (blaster.x <= 1000){
    blaster.x += 10;
    blaster.drawFlake(30);
  }
  else{
    blast = (int)(random(1,9)*100);
    blaster.x = 0;
    blaster.y = blast; 
  }
}
