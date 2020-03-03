class Part implements Comparable{
  String name;
  int id;
  String make;
  String model;
  int year;
  Scanner setter;

  public Part(String input) {
    setSpecs(input);
  }
  
  public void setSpecs(String input){
    setter = new Scanner(input);
    setter.useDelimiter("(\\d)+");//delimit until the numbers
    name = setter.next().trim(); //this value will be the name
    setter.useDelimiter(" "); //delimit by spaces
    id = setter.nextInt(); //next is the ID value
    make = setter.next().trim(); //then the make
    model = setter.next().trim(); //then the model
    year = setter.nextInt(); //then the year
  }
  
  public String getName() {
    return name;
  }
  public int getid() {
    return id;
  }
  public String getMake() {
    return make;
  }
  public String getModel() {
    return model;
  }
  public int getYear() {
    return year;
  }

  public String toString() {
    return name + " " + id + " " + make + " " + model + " " + year;
  }
  
  public int compareTo(Part other){
   if(other.getMake() != make) return make.compareTo(other.getMake());
   if(other.getModel() != model) return model.compareTo(other.getModel());
   return year - other.getYear();
  }
  
  public 
}
