import java.util.Scanner;
ArrayList<String> words;
ArrayList<String> uniqueWords;
ArrayList<Integer> wordCounts;
ArrayList<Float> wordPercents;
String[] lines;
String input;
void setup() {
    background(0);
    size(200,200);
    
    lines = loadStrings("social.dat");
    for (String s : lines) {
      input += " " + s;
    }
    words = StringParser.getWordList(input);
    uniqueWords = StringParser.getUniqueWords(input);
    wordCounts = StringParser.getCountOfWords(uniqueWords, input);
    wordPercents = StringParser.getPercents(wordCounts);
    println(words);
    println(uniqueWords);
    println(wordCounts);
    println(wordPercents);
}

void draw(){
 background(0);
 for(int i = 0; i < words.size(); i++){
 
 }
}
