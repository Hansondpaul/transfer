public class Blaster{
  private int blasterlocation;
  private Snow blaster = new Snow(-10,-10,5);
  public Blaster()
  {
    blasterlocation = (int)(random(1,9)*100);
    blaster.setcoords(blasterlocation.blaster.y);
  }
  
  public void blasterSetup(){
    for (int i = 1; i <= 9; i++){
      fill(100);
      noStroke();
      rect(0,(i*100)-20,40,40);
    }
  }
  public void blast(){
    blaster.setcoords(0,blasterlocation);
    blaster.slidesnow();
  }
}
