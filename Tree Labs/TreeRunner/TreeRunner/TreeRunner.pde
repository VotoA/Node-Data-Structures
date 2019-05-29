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
}
