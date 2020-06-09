class BinaryNodeTree<T extends Comparable> {
  //////////////
  //Parameters//
  //////////////
  Node<T> root;

  ////////////////
  //Constructors//
  ////////////////
  public BinaryNodeTree() {
  }
  public BinaryNodeTree(Node<T> n) {
    root = n;
  }

  //////////////////
  //Setter Methods//
  //////////////////

  /////////////////
  //GetterMethods//
  /////////////////
  public Node<T> getRoot() {
    return root;
  }

  public T getRootValue() {
    return root.getValue();
  }
  /////////////////
  //Other Methods//
  /////////////////

  //insert//
  public void insert(T v) {
    if (root == null)
      root = new Node<T>(v);
    else {
      root.insertChild(v);
    }
  }

  //remove//
  public void remove(T v) {
    switch (getNode(v).getChildrenNumber()) {
    case 0:
    }
  }

  //getNode//
  public Node<T> getNode(T v) {
    if (v.equals(root.getValue()))
      return root;
    else return root.binarySearch(v);
  }

  //containsValue//
  public boolean containsValue(T v) {
    if (v.equals(root.getValue())) return true;
    else return root.binarySearch(v) != null;
  }

  private Node<T> getParentOf(Node<T> n, Node<T> current) {
    if (n == current) return null;
    if (current.isParentOf(n)) return current;
    else //todo finish this to finish remove
  }
  ////////////////////
  //ordering methods//
  ////////////////////

  //inOrder//
  public

}//EOF
