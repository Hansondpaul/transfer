public static class StringParser {
  static Scanner scan;
  static Scanner subScan;

  public static int countWords(String s) {
    String[] words = s.split("[^A-Za-z0-9]");
    return words.length;
  }

  public static ArrayList<String> getWordList(String s) {
    String[] words = s.split("[^A-Za-z0-9]");
    ArrayList<String> result = new ArrayList<String>();
    for (int i = 0; i < words.length; i++) {
      result.add(words[i]);
    }
    return result;
  }

  public static String[] getWords(String s) {
    String[] words = s.split("[^A-Za-z0-9]");
    return words;
  }

  public static ArrayList<String> getUniqueWords(String s) {
    String[] words = getWords(s);
    ArrayList<String> uniques = new ArrayList<String>();
    boolean flag = false;

    for (int i = 0; i < words.length; i++) {
      flag = false;
      for (int j = 0; j < uniques.size(); j++) {
        flag = words[i].equals(uniques.get(j));
      }
      if (!flag) {
        uniques.add(words[i]);
      }
    }
    return uniques;
  }

  public static ArrayList<Integer> getCountOfWords(ArrayList<String> s, String q) {
    ArrayList<Integer> counts = new ArrayList<Integer>();
    for (int i = 0; i<s.size(); i++) {
      counts.add(0);
    }
    String[] words = getWords(q);

    for (int i = 0; i < s.size(); i++) {
      for (int j = 0; j < words.length; j++) {
        int save = counts.get(i);
        if (s.get(i).equals(words[j])) counts.set(i, save+1);
      }
    }
    return counts;
  }

  public static float getTotal(ArrayList<Integer> ints) {
    int a = 0;
    for (int i = 0; i < ints.size(); i++) {
      a += ints.get(i);
    }
    return a;
  }
  public static ArrayList<Float> getPercents(ArrayList<Integer> ints) {
    ArrayList<Float> results = new ArrayList<Float>();
    double total = getTotal(ints);

    for (int i = 0; i < results.size(); i++) {
      float value = ints.get(i);
      results.set(i, value/(float)total);
    }

    return results;
  }
  public static int countVowels(String s) {
    int result = 0;
    String current;
    for (int i = 0; i<s.length(); i++) {
      current = s.substring(i, i+1).toLowerCase();

      if (current.equals("a")||current.equals("e")||current.equals("i")||current.equals("o")||current.equals("u")||current.equals("y")) {
        result++;
      }
    }
    return result;
  }

  public static int getVowelstrings(String s) {
    int result = 0;
    int consec = 0;
    String current;
    for (int i = 0; i < s.length(); i++) {
      current = s.substring(i, i+1).toLowerCase();
      if (current.equals("a")||current.equals("e")||current.equals("i")||current.equals("o")||current.equals("u")||current.equals("y")) {
        consec++;
      } else if (consec > 0) {
        result++;
        consec = 0;
      }
    }
    if (consec > 0) result++;
    return result;
  }

  /**
   * Get the total number of syllables in the document (the paragraph). 
   * To count the number of syllables in a word, use the following rules:
   *       Each contiguous sequence of one or more vowels is a syllable, 
   *       with the following exception: a lone "e" at the end of a word 
   *       is not considered a syllable unless the word has no other syllables. 
   *       You should consider y a vowel.
   */

  public static int countSyllables() {











    return 0;
  }



  /**
   * Eventually write this one too. Get the number of sentences in the document/paragraph.
   * Sentences are defined as contiguous strings of characters ending in an 
   * end of sentence punctuation (. ! or ?) or the last contiguous set of 
   * characters in the document, even if they don't end with a punctuation mark.
   */

  public static int countSentences() {









    return 0;
  }
}
