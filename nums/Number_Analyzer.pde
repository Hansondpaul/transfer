import java.util.ArrayList;
import java.util.Scanner;
import static java.lang.System.*;

public class NumberAnalyzer{
  private ArrayList<Number> list;
  
  

  public NumberAnalyzer(){
    
    

  }

  public NumberAnalyzer(String numbers){
    setList(numbers);
  }
  
  public void setList(String numbers){
    list=new ArrayList<Number>();
    Scanner chopper = new Scanner(numbers);
    
    while(chopper.hasNext()){
      list.add(new Number(chopper.nextInt()));
    }


  
  }

  public int countOdds(){
      int oddCount=0;





      return oddCount;
  }

  public int countEvens(){
      int evenCount=0;
     for(Number num : list){
        if(!num.isOdd())
           evenCount++;
      }
      return evenCount;
  }

  public int countPerfects() {
    int perfectCount=0;
    for(Number num : list){
      if(num.isPerfect()) perfectCount++;
    }
      return perfectCount;
  }
  
  public String toString( ){
    return ""+ list;
  }
}
