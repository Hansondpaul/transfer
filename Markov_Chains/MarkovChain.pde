import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain {
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void getChain(String s) {
  }
  void trainMap(String [] str) {
    String currentWord;
    String nextWord;

    for (int i = 0; i<str.length-1; i++) { //for every word except the last
      currentWord = str[i];                //the current word is the word at i
      nextWord = str[i+1];                 //the next word is the word at i+1

      if (!myMap.keySet().contains(currentWord)) {       //if this is the first instance of the word
        myMap.put(currentWord, new ArrayList<String>()); //add it to the map
        wordList.add(currentWord);                       //and to the the list of words
        myMap.get(currentWord).add("|");
      }
      myMap.get(currentWord).add(nextWord); //add the next word to the list of words that can follow the current word
    }

    currentWord = str[str.length-1]; //for the last word

    if (!myMap.keySet().contains(currentWord)) {       //if this is the first instance of the word
      myMap.put(currentWord, new ArrayList<String>()); //add it to the map
      wordList.add(currentWord);  //and to the the list of words
    }
    myMap.get(currentWord).add("|"); //add a special character to represent the
  }

  public String generateText(String str) {
    String result = "";
    String currentWord = str;
    String nextWord;

    while (!currentWord.equals("|")) {
      nextWord = myMap.get(currentWord).get(getRandomIndex(currentWord));
      result += " " + currentWord;
      currentWord = nextWord;
    }

    return result.trim();
  }

  public String generateText(String str, int i, int m) {
    String result = "";
    String currentWord = str;
    String nextWord;
    int a = 0;

    while (!currentWord.equals("|") && a<=i) {
      nextWord = myMap.get(currentWord).get(getRandomIndex(currentWord));
      result += " " + currentWord;
      currentWord = nextWord;
      if (i<m && currentWord.equals("|")) {
        currentWord = result.split(" ")[0];
      }
      a++;
    }



    return result.trim();
  }

  /*
      create two random index variables called randomIndex and randomIndex2
   if (map.containsKey(str)) {
   call getRandomIndex(str) and store it in randomIndex
   call getRandomIndex(str) and store it in randomIndex2
   the build your newString adding str_ myMap.get(randomIndex) and randomIndex2
   */

  int getRandomIndex(String s) {
    int randomIndex=(int)(Math.random()*myMap.get(s).size());
    return randomIndex;
  }

  void printMap() {
  }

  public String toString() {
    return ""+wordList;
  }
}
