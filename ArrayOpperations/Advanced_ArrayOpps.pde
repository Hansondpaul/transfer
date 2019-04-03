public class AdvancedArrayOpps2d extends ArrayOpps2d
{
  
  /*////////////////////////////////////////
  Method rowSwap and Overloads
  */////////////////////////////////////////
  public void rowSwap(Object[][] s, int a, int b){
    Object[] swap = s[a];
    s[a] = s[b];
    s[b] = swap;}
  
  public void rowSwap(int[][] s, int a, int b){
    int[] swap = s[a];
    s[a] = s[b];
    s[b] = swap;}
  
  public void rowSwap(String[][] s, int a, int b){
    String[] swap = s[a];
    s[a] = s[b];
    s[b] = swap;}
    
  /*////////////////////////////////////////
  Method colSwap and Overloads
  */////////////////////////////////////////
  public void colSwap(Object[][] s, int a, int b){
    for(Object[] c: s)
      swap(c,a,b);}
      
  public void colSwap(int[][] s, int a, int b){
    for(int[] c: s)
      swap(c,a,b);}
      
  /*////////////////////////////////////////
  Method fillRowMajor and Overloads
  */////////////////////////////////////////
  public String[][] fillRowMajor(String str, int a, int b){
    int i = 0;
    int x = 0;
    String[][] res = new String[a][b];
    for(int s = 0; s < str.length(); s++){
      if(i>res[x].length){
        i-=i;
        x++;}
      if(x>res.length) 
        return res;
      res[x][i] = ""+str.charAt(s);
      i++;}
    return res;}
    
  /*////////////////////////////////////////
  Method fillColumnMajor and Overloads
  */////////////////////////////////////////
  public int[][] fillColumnMajor(int[] nums, int a, int b){
    int i = 0;
    int x = 0;
    int[][] res = new int[a][b];
    for(int s = 0; s < nums.length; s++){
      if(i>res[x].length){
        i-=i;
        x++;}
      if(x>res.length) 
        return res;
      res[x][i] = nums[s];
      i++;}
    return res;}
}
