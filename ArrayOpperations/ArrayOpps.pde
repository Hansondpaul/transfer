class ArrayUtils
{
  public ArrayUtils(){}
  
  /*////////////////////////////////////////
  Method swap and Overloads
  */////////////////////////////////////////
  public void swap(Object[] arr, int a, int b){
    Object[] swapped = arr;
    swapped[a] = arr[b];
    swapped[b] = arr[a];
    arr = swapped;}
  
  public void swap(int[] arr, int a, int b){
    int[] swapped = arr;
    swapped[a] = arr[b];
    swapped[b] = arr[a];
    arr = swapped;}
    
  /*////////////////////////////////////////
  Method print[type]
  */////////////////////////////////////////
  public void printString(String[][] arr){
    for (int i = 0; i < arr.length; i++){
      for (int j = 0; j < arr[i].length; j++){
        System.out.print(arr[i][j] + " ");}
      System.out.println();}
    System.out.println();}

  public void printInt(int[][] arr) {
    for(int i = 0; i < arr.length; i++){
      for(int j = 0; j < arr[i].length; j++){
        System.out.print(arr[i][j] + " ");}
      System.out.println();}
    System.out.println();}
    
}
