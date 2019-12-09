import java.util.Scanner;

static class LineCounter {
  static Scanner scan;

  public LineCounter() {
  }

  public static int countLines(String s) {
    scan = new Scanner(s);
    int total = 0;
    while (scan.hasNext()) {
      total++;
      scan.nextLine();
    }
    return total;
  }
}
