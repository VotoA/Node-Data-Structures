import static java.lang.System.*;
import java.util.Stack;

void setup()
{
  BinarySearchTree bst = new BinarySearchTree(); 
    
    bst.add(90);
    bst.add(80);
    bst.add(100);
    bst.add(70);
    bst.add(85);
    bst.add(98);
    bst.add(120);               
             
    out.println("In Order\n");  
    bst.inOrder();
    
    out.println("\nPre Order\n");  
    bst.preOrder();   
  
    out.println("\nPostOrder\n");  
    bst.postOrder(); 
    
    out.println("\nReverse Order\n");  
    bst.revOrder();   
    
    out.println("\nNumber of Levels\n");  
    print(bst.getNumLevels()); 
    
    out.println("\n\nNumber of Leaves\n");  
    print(bst.getNumLeaves());   
    
    out.println("\n\nWidth\n");  
    print(bst.getWidth()); 
    
    out.println("\n\nHeight\n");  
    print(bst.getHeight());   
    
    out.println("\n\nNumber of Nodes\n");  
    print(bst.getNumNodes()); 
    
    out.println("\n\nIs Full?\n");  
    print(bst.isFull());   
}
