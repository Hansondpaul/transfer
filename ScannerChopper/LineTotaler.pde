import java.util.Scanner;
//Also Contains the Averager method
public static class LineTotaler {
  static Scanner scan;
  static Scanner subScan;

  public static int totalLine(String s) {
    subScan = new Scanner(s);
    int total = 0;
    while (subScan.hasNext()) {
      total += subScan.nextInt();
    }
    return total;
  }

  public static String totalLines(String s) {
    scan = new Scanner(s);
    String result = "";
    while (scan.hasNext()) {
      result += totalLine(scan.nextLine()) + " ";
    }
    return result;
  }
  
  public static int averageLine(String s) {
    int average = totalLine(s);
    int devisor = 0;
  }
}
