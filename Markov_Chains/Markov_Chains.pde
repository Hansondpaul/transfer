MarkovChain mc;
String[] realText;
String[] cleanText;

void setup() {
  size(100,100);
  mc=new MarkovChain();
  String [] str=loadStrings("data/wordList.txt");
  String allText=join(str, " ");
  cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting

  realText = new String[cleanText.length];
  for (int i = 0; i<cleanText.length; i++) {
    if (!cleanText[i].contains("--")) {
      realText[i] = cleanText[i];
    }
  }

  mc.trainMap(realText);
  println(mc.generateText(realText[(int)random(0, realText.length-1)]),7,4);
  mc.printMap();
}

void draw(){}
void keyPressed() {
  println(mc.generateText(realText[(int)random(0, realText.length-1)],7,4));
}
