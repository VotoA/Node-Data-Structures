class ListFunHouseTwo
{
  private ListNode list;
  public ListFunHouseTwo()
  {
    list = new ListNode();
  }
  public ListFunHouseTwo(Comparable value)
  {
    list = new ListNode(value, null);
  }
  public void add(Comparable data)
  {
    ListNode temp = list;
    while (temp.getNext()!=null)
    {
      temp = temp.getNext();
    }
    temp.setNext(new ListNode(data, null));
  }
  public int nodeCount()
  {
    int count=1;
    ListNode temp = list;
    while (temp.getNext()!=null)
    {
      temp = temp.getNext();
      count++;
    }
    return count;
  }
  public void doubleFirst()
  {
    list.setNext(new ListNode (list.getValue(), list.getNext()));
  }
  public void doubleLast()
  {
    ListNode temp = list;
    while (temp.getNext()!=null)
    {
      temp = temp.getNext();
    }
    temp.setNext(new ListNode(temp.getValue(), null));
  }
  public void setXthNode(int x, Comparable value)
  {
    ListNode temp = list;
    int count = 1;
    while (temp!=null)
    {
      if (count == x)
      {
        temp.setValue(value);
      }
      count++;
      temp = temp.getNext();
    }
  }  
  public void removeXthNode(int x)
  {
    ListNode temp = list;
    int count = 1;
    while (temp!=null)
    {
      if (count == (x-1))
      {
        temp.setNext(temp.getNext().getNext());
      }
      count++;
      temp = temp.getNext();
    }
  }    
  public String toString()
  {
    String output="";
    ListNode temp = list;
    while (temp!=null)
    {
      output+=" "+temp.getValue();
      temp = temp.getNext();
    }
    return output;
  }
}
