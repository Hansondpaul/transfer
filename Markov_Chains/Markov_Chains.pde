
void setup() {
  MarkovChain mc=new MarkovChain();
  String [] str=loadStrings("data/oneFish.txt");
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
    // mc.generateText(s);
    //println(mc.generateText(s));
  }
  //mc.printMap();
}
