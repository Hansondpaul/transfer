import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

class MarkovChain implements Markov {
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String [] str) {
    for (int i = 0; i<str.length-1; i++) {
      String currentWord = str[i];
      String nextWord = str[i+1];
      if (!myMap.contains(currentWord)) {
        myMap.put(currentWord, new ArrayList<String>()); 
        wordList.add(currentWord);
      }
      myMap.get(currentWord).put(nextWord);
    }
    currentWord = str[str.length-1];
    if (!myMap.contains(currentWord)) {
      myMap.put(currentWord, new ArrayList<String>()); 
      wordList.add(currentWord);d
    }
    myMap.get(currentWord).put("|");
  }

  String generateText(String str) {
    String result = "";
    String currentWord;
    while(currentWord != "|"){
      
    }
  }
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
