 OddballParticle p;
Particle[] particles;
void setup() {
  size(600,600);
  
  particles = new Particle[101];
  particles[0] = new OddballParticle();
  
  for(int i = 1; i < particles.length; i++){
   particles[i] = new NormalParticle((int)((Math.random()*1200)-600),(int)((Math.random()*1200)-600)); 
  }
}

void draw() {
  
  ellipseMode(CENTER);
  background(0);
  
  translate(width/2, height/2);
  
  drawGrid(); // draw everything on top of this
  
  for(int i = 0; i < particles.length; i++){
  particles[i].move();
  particles[i].show();
  }
  
  
  

}

void drawGrid(){
    stroke(255);
    line(0,300,0,-300);
    line(300,0,-300,0);
}//DrawGrid

interface Particle{
 void move();
 void show();
} //Particle

class NormalParticle implements Particle{
  float r; //distance from referance
  float theta, theta_vel, theta_acc; //Angle and Angular Momentum
  float x,y; //Location
  
  public NormalParticle(int a,int b){
    x = a;
    y = b;
    
    r = (int)((Math.random()*2*300));
    theta = (float)(Math.random()*(-1*2*Math.PI));
    theta_vel = 0.05;
    theta_acc = 0;
  }
  
  void move(){
    theta_vel += theta_acc;
    theta += theta_vel;
    if((y>0 && x<0)||(y<0 && x>0)) r+=3;
    else r-=3;
    x = r * cos(theta);
    y = r * sin(theta);
     
  }
  void show(){
    noStroke();
    fill(200);
    ellipse(x, y, 5, 5);
  }
  
}


class OddballParticle implements Particle{
  float r; //distance from referance
  float theta, theta_vel, theta_acc; //Angle and Angular Momentum
  float x,y; //Location
  boolean in; //Direction of spiral

  public OddballParticle(){
    r = height * 0.45;
    theta = 0;
    theta_vel = 0.05;
    theta_acc = 0;
    in = true;
  }//Constructor
  
  public void move(){
    theta_vel += theta_acc;
    theta += theta_vel;
    
    x = r * cos(theta);
    y = r * sin(theta);
    
    if(in) r--;
    else r++;
    
    if(abs(r) >= 300) in = !in;
  }
  
  
  public void show(){
    noStroke();
    fill(200);
    ellipse(x, y, 32, 32);
  }
}//Oddball
