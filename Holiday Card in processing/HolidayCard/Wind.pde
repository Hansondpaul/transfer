public class Wind{
  private double speed;
  
  public Wind(double s){
    speed = s;
  }
  
  public double getSpeed(){
    return speed;
  }
  
  public void setSpeed(double s){
    speed = s;
  }
  
  public void editSpeed(double s){
    speed += s;
  }
  
  public void velSwap(){
    if(speed > 0) while(speed != -1*(speed)) speed--;
    else while(speed != -1*speed) speed++;
  }
  
}//class
