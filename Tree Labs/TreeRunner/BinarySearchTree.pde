class BinarySearchTree
{
  private TreeNode root;
  private Stack<TreeNode> stack;
  public BinarySearchTree()
  {
    root = null;
    stack = new Stack<TreeNode>();
  }
  public void add(Comparable val)
  {
    root = add(val, root);
  }
  private TreeNode add(Comparable val, TreeNode tree)
  {
     if(tree == null){
      tree = new TreeNode(val);
      return tree;
     }
      
    Comparable treeValue = tree.getValue();
    int dirTest = val.compareTo(treeValue);
    
    if(dirTest <= 0){
      tree.setLeft(add(val, tree.getLeft()));
    }else if(dirTest > 0){
      tree.setRight(add(val, tree.getRight()));
    }
    return tree;
  }
  public void inOrder()
  {
    inOrder(root);
    System.out.println("\n\n");
  }
  private void inOrder(TreeNode tree)
  {
    if (tree != null) {
      inOrder(tree.getLeft());
      System.out.print(tree.getValue() + " ");
      inOrder(tree.getRight());
    }
  }
  public void preOrder()
  {
    preOrder(root);
    System.out.println("\n\n");
  }
  private void preOrder(TreeNode tree)
  {
    if (tree != null) {
      System.out.print(tree.getValue() + " ");
      preOrder(tree.getLeft());
      preOrder(tree.getRight());
    }
  }
  public void postOrder()
  {
    postOrder(root);
    System.out.println("\n\n");
  }
  private void postOrder(TreeNode tree)
  {
    if (tree != null) {
      postOrder(tree.getLeft());
      postOrder(tree.getRight());
      System.out.print(tree.getValue() + " ");
    }
  }
  public void revOrder()
  {
    revOrder(root);
    while(stack.isEmpty()!=true)
    {
      print(stack.pop().getValue()+" ");
    }
    System.out.println("\n\n");
  }
  private void revOrder(TreeNode tree)
  {
    if (tree != null) {
      revOrder(tree.getLeft());
      stack.push(tree);
      revOrder(tree.getRight());
    }
  }
  public int getNumLevels()
  {
    return getNumLevels(root);
  }
  private int getNumLevels(TreeNode tree)
  {
    if (tree==null)
      return 0;
    else if (getNumLevels(tree.getLeft())>getNumLevels(tree.getRight()))
      return 1+getNumLevels(tree.getLeft());
    else
      return 1+getNumLevels(tree.getRight());
  }
  public int getNumLeaves()
  {
    return getNumLeaves(root);
  }
  private int getNumLeaves(TreeNode tree)
  {
    if(tree.getLeft()==null && tree.getRight()==null)
    {
      return 1;
    } else if (tree.getRight()==null)
    {
      return getNumLeaves(tree.getLeft());
    } else if (tree.getRight()==null)
    {
      return getNumLeaves(tree.getRight());
    } else {
      return getNumLeaves(tree.getLeft())+getNumLeaves(tree.getRight());
    }
  }
  public int getWidth()
  {
    return getWidth(root);
  }
  private int getWidth(TreeNode tree)
  {
    if(tree!=null)
    {
      return 1+getLeftWidth(tree.getLeft())+getRightWidth(tree.getRight());
    }
    return 0;
  }
  private int getLeftWidth(TreeNode tree)
  {
    if(tree!=null)
    {
      return 1+getLeftWidth(tree.getLeft());
    }
    return 0;
  }
  private int getRightWidth(TreeNode tree)
  {
    if(tree!=null)
    {
      return 1+getRightWidth(tree.getRight());
    }
    return 0;
  }
  public int getHeight()
  {
    return getNumLevels()-1;
  }
  public int getNumNodes()
  {
    return getNumNodes(root);
  }
  private int getNumNodes(TreeNode tree)
  {
    if(tree!=null)
    {
      return 1+getNumNodes(tree.getLeft())+getNumNodes(tree.getRight());
    } else {
      return 0;
    }
  }
  public boolean isFull()
  {
    return getNumNodes() == (int)Math.pow(2, getNumLevels())-1;
  }
  public String toString()
  {
    return ""+root.getValue();
  }
  private String toString(TreeNode tree)
  {
    return "";
  }
}
