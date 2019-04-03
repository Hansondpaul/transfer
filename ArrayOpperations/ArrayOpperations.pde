public AdvancedArrayOpps2d test = new AdvancedArrayOpps2d();
void setup()
{
  int numRows = 3, numCols = 4;

    // 1
    int[][] mat = new int[][] { { 10, 9, 8, 7 }, { 6, 5, 4, 3 }, { 2, 1, -1, 0 } };
    // expected output{ { 10, 9, 8, 7 }, { 2, 1, -1, 0 }, { 6, 5, 4, 3 } };

    // 2
    int[][] mat2 = new int[][] { { 10, 9, 8, 7 }, { 6, 5, 4, 3 }, { 2, 1, -1, 0 } };
    // expected output{ 10, 7, 8, 9 }, { 6, 3, 4, 5 }, { 2, 0, -1, 1 } };

    // 3
    String phrase = "Rosemount High";
    // expected output{ { "R", "o", "s", "e" }, { "m", "o", "u", "n" }, { "t", " ",
    // "H", "i" } };

    // 4
    int[] fillColMajor = new int[] { 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1 };
    // expected output{ { 10, 7, 4, 1 }, { 9, 6, 3, 0 }, { 8, 5, 2, -1 } };

    // 5
    int[] vals = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
    // expected output{ { 1, 6, 7, 12 }, { 2, 5, 8, 11 }, { 3, 4, 9, 10 } };

    AdvancedArrayOpps2d test = new AdvancedArrayOpps2d();

    // 1
    //test.printInt(mat);
    test.rowSwap(mat, 1, 2);
    System.out.println("one");
    test.printInt(mat);

    // 2
    test.colSwap(mat2, 1, 3);
    System.out.println("two");
    test.printInt(mat2);

    // 3
    String[][] three = test.fillRowMajor(phrase, numRows, numCols);
    System.out.println("three");
    test.printString(three);

    // 4
    int[][] four = test.fillColumnMajor(fillColMajor, numRows, numCols);
    System.out.println("four");
    test.printInt(four);

    // 5
    int[][] five = test.fillDownUp(vals, numRows, numCols);
    System.out.println("five");
    test.printInt(five);
}
