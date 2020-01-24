import java.util.Scanner;
import java.util.Map;

ArrayList<Float> wordPercents;
HashMap<String, Integer> wordsAndCounts;

String[] lines;
String input;

void setup() {
  background(0);
  size(200, 200);
  wordsAndCounts = new HashMap<String, Integer>();

  lines = loadStrings("Moby Dick.txt");
  for (String s : lines) {
    input += " " + s;
  }
  setWordsAndCounts(input);
  println(wordsAndCounts);
}

void draw() {
  background(0);
}

void setWordsAndCounts(String s) {
  ArrayList<String> uniques = StringParser.getUniqueWords(s);
  ArrayList<Integer> counts = StringParser.getCountOfWords(uniques, s);
  
  for (int i = 0; i < uniques.size(); i++) {
    println(uniques.get(i) + " "  + counts.get(i));
    wordsAndCounts.put(uniques.get(i), counts.get(i));
  }
}
