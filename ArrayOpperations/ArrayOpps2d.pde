public class ArrayOperations
{
  ///constructors///
  public ArrayOperations(){}
  
  ///getlength///overloaded for int, double, long, and float
  public int len(int[][] in)
  {
    int res = 0;
    for(int[] a: in) for(int i: a) res += 1;
    return res;
  }
  public double len(double[][] in)
  {
    double res = 0;
    for(double[] a: in) for(double i: a) res += 1;
    return res;
  }
  public long len(long[][] in)
  {
    long res = 0;
    for(long[] a: in) for(long i: a) res += 1;
    return res;
  }
  public float len(float[][] in)
  {
    float res = 0;
    for(float[] a: in) for(float i: a) res += 1;
    return res;
  }
  
  ///getTotal///Overloaded for int, double, long, float///
  public int getTotal(int[][] in)
  {
    int res = 0;
    for(int[] a: in) for(int i: a) res += i;
    return res;
  }
  public double getTotal(double[][] in)
  {
    double res = 0;
    for(double[] a: in) for(double i: a) res += i;
    return res;
  }
  public long getTotal(long[][] in)
  {
    long res = 0;
    for(long[] a: in) for(long i: a) res += i;
    return res;
  }
  public float getTotal(float[][] in)
  {
    float res = 0;
    for(float[] a: in) for(float i: a) res += i;
    return res;
  }
  
  ///getAverage///Overloaded for int, double, long, float///
  public int getAverage(int[][] in)
  {
    int res = getTotal(in);
    return res/len(in);
  }
  public double getAverage(double[][] in)
  {
    double res = getTotal(in);
    return (double)(res/len(in));
  }
  public long getAverage(long[][] in)
  {
    long res = getTotal(in);
    return (long)(res/len(in));
  }
  public float getAverage(float[][] in)
  {
    float res = getTotal(in);
    return (float)res/len(in);
  }
  
  ///getRowTotal///Overloaded for int, double, long, float///
  public int getRowTotal(int[][] in, int i)
  {
    int res = 0;
    for(int a: in[i])
    res += a;
    return res;
  }
  public double getRowTotal(double[][] in, int i)
  {
    double res = 0;
    for(double a: in[i])
    res += a;
    return res;
  }
  public long getRowTotal(long[][] in, int i)
  {
    long res = 0;
    for(long a: in[i])
    res += a;
    return res;
  }
  public float getRowTotal(float[][] in, int i)
  {
    float res = 0;
    for(float a: in[i]) res += a;
    return res;
  }
  
  ///getColumnTotal///Overloaded for int, double, long, float///
  public int getColumnTotal(int[][] in, int i)
  {int res = 0;
   for(int[] a: in) res += a[i];
   return res;}
   
  public double getColumnTotal(double[][] in, int i)
  {double res = 0;
   for(double[] a: in) res += a[i];
   return res;}
   
  public long getColumnTotal(long[][] in, int i)
  {long res = 0;
   for(long[] a: in) res += a[i];
   return res;}
   
  public float getColumnTotal(float[][] in, int i)
  {float res = 0;
   for(float[] a: in) res += a[i];
   return res;}
   
  ///getHighestInRow///Overloaded for int, double, long, float///
}
