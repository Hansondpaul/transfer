class Cell{
  private PVector location;
  private PVector speed;
  private color filled;
  private int state;
  private String emotion;
  private int[] stats;
  private int energy;
  private PVector target;
  private double direction;
  private final int[] starting = {(int)random(1,15),(int)random(1,15),(int)random(1,15),(int)random(1,15),(int)random(1,15),(int)random(1,15)};  
  
  /*
  Stat index:
  0: Temper
  1: Speed/Health
  2: Vision
  3: Patience
  4: Fear
  5: Standerd
  6: Most important stat
  
  State Tables:
  0: Wandering
  1: Hungry
  2: Persuing
  3: Fleeing
  4: Mating
  */
  
  /*geter-seter methods*/
  public int getState(){return state;}
  public int setState(int newstate){int old = state; state = newstate; return old;}
  public color getColor(){return filled;}
  public color setColor(color newColor){color old = filled; filled = newColor; return old;}
  public PVector getLoctation(){return location;}
  public PVector setLocation(PVector newstate){PVector old = location; location = newstate; return old;}
  public String getEmotion(){return emotion;}
  public String setEmotion(String s){String old = emotion; emotion = s; return old;}
  public int getEnergy(){return energy;}
  public int setEnergy(int newstate){int old = energy; energy = newstate; return old;}
  
  
  
  /* constructors */
  public Cell(){
    location = new PVector(300,300);
    speed = new PVector(0,0);
    state = 0;
    stats = starting;
    filled = createColor(stats);
    emotion = "Calm";
    energy = 100;
    println(stats);
  }
  
  /* helper methods */
  public color createColor(int[] c){
    int r = (10*c[0]) + c[1];
    int g = (10*c[2]) + c[3];
    int b = (10*c[4]) + c[5];
    color result = color(r,g,b);
    return result;
  }
  
  public float distance(int x1, int y1, int x2, int y2)
  {
   return sqrt(pow(x1-x2,2) + pow(y1-y2,2));
  }
  
  
  /* drawing and decision making algorithms */
  public void drawCell(){
   stroke(filled);
   fill(filled);
   ellipse(location.x-5,location.y-5,10,10); 
   if(location.equals(target)){} else{target();}
   move();
  }
  
  public PVector search(color c){
    PVector closest = location;
    for(int i = 6; i < stats[2]; i++){
      //Detect c in radius of i
    }
    return closest;
  }
  
  public void target(){
    switch (state){
      case 0: //wandering state 
      {
            target = new PVector((int)(Math.random()*(stats[2]*2))-stats[2],(int)(Math.random()*(stats[2]*2))-stats[2]);
            println(target);
            direction = atan2(target.y - location.y, target.x - location.x);
            println(direction);
      }
      case 1: //hungry state
      {
        
      }
      case 2: //persuit state
      {
        
      }
      case 3: //fleeing state
      {
        
      }
      case 4: //mating state
      {
        
      }
    }
  }
  public void move(){
    double speedmod = 2.0;
    if(state == 1) speedmod = 1.0;
    speed.x = (int) (speedmod * Math.cos(direction));
    speed.y = (int) (speedmod * Math.sin(direction));
    location.x+=speed.x;
    location.y+=speed.y;
    if(location.x < 5 || location.x > 595) location.x -= speed.x;
    if(location.y < 5 || location.y > 599) location.y -= speed.y;
  }
  
  
}
