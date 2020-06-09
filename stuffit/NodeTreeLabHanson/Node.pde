class Node<T extends Comparable> {
  Node<T> left;
  Node<T> right;
  T value;

  //////////////////////
  /////Constructors/////
  //////////////////////
  public Node(T v) {
    value = v;
    left = null;
    right = null;
  }

  public Node(Node<T> v) {
    left = v.getLeft();
    right = v.getRight();
    value = v.getValue();
  }

  //////////////////////
  ////Setter Methods////
  //////////////////////
  public T setValue(T v) {
    T temp = value;
    value = v;
    return temp;
  }

  //setters that use T values//
  public T setLeft(T l) {
    T temp = left.getValue();
    left = new Node(l);
    return temp;
  }

  public T setRight(T r) {
    T temp = right.getValue();
    right = new Node(r);
    return temp;
  }

  //setters that use node objects//
  public Node<T> setLeft(Node<T> l) {
    Node<T> temp = left;
    left = l;
    return temp;
  }

  public Node<T> setRight(Node<T> r) {
    Node<T> temp = right;
    right = r;
    return temp;
  }

  //////////////////////
  ////Getter Methods////
  //////////////////////
  public Node<T> getLeft() {
    return left;
  }

  public Node<T> getRight() {
    return right;
  }

  public T getValue() {
    return value;
  }

  /////////////////////
  ////Other Methods////
  /////////////////////

  //isLeaf//
  public boolean isLeaf() {
    return (left == null && right == null);
  }

  public int getChildrenNumber() {
    int result = 0;
    if (left != null) result++;
    if (right != null) result++;
    return result;
  }
  public int getDecendantCount(){
    if(right != null) return 
  }

  //insertChild//
  public void insertChild(T v) { //TODO Ensure that my operator after the compareTo is correct for checking if v is greather than value
    if (v.compareTo(value) > 0) {
      if (right != null) right.insertChild(v);
      else setRight(v);
    } else if (v.compareTo(value) < 0) {
      if (left != null) left.insertChild(v);
      else setLeft(v);
    }
  }

  //binarySearch//
  public Node<T> binarySearch(T v) {
    if (isLeaf()) return null;
    if (left != null && left.getValue().equals(v)) return left;
    if (right!= null && right.getValue().equals(v)) return right;
    if (v.compareTo(value) > 0) return right.binarySearch(v);
    if (v.compareTo(value) < 0) return left.binarySearch(v);
    return null;
  }

  //isParentOf//
  public boolean isParentOf(Node<T> n) {
    if(n == left) return true;
    if(n == right) return true;
    return false;
  }

  //traversalMethods//
  public Node<T>[] preOrder(){
    Node<T> result = new Node<T>[left.
    result
  }
  public String toString(){
    return value.toString();
  }
}//EOF
