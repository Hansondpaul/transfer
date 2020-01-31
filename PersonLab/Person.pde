class Person implements Comparable<Person>
{
  private int year;
  private int month;
  private int day;
  private String name;

  public Person( int y, int m, int d, String n)
  {
   year = y;
   month = m;
   day = d;
   name = n;
  }
  
  public int getYear(){return year;}
  public int getMonth(){return month;}
  public int getDay(){return day;}
  
  public int compareTo( Person other )
  {
     if(other.getYear() != year) return year - other.getYear();
     else if(other.getMonth() != month) return month - other.getMonth();
     else if(other.getDay() != day) return day - other.getDay();
     else return name.compareTo(other.toString());
  }

  public String toString()
  {
     return name;
  }
}
