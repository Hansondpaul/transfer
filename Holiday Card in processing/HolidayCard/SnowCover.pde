public class SnowCover{
  public int cover = 0;
  public SnowCover(){}
  
  public void moreSnow(){
    cover++;
  }
  public void moreSnow(int c){
    cover = cover + c;
    System.out.println(cover);
  }
  public int getCover(){
    return cover;
  }
  public void setCover(int i){
    cover = i;
  }
  
}
