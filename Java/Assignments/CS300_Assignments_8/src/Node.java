/**
 * Node class for LinkedList for Stack<T>
 * 
 * @param <T> type of data of node
 */
public class Node<T> {
  private final T data;// the element of this node
  private Node<T> next;// the next node connected to this one

  /**
   * Create a new node with given parameters
   * 
   * @param element represents the element of the current node
   * @param next represents the next node
   */
  public Node(T element, Node<T> next) {
    this.data = element;
    this.next = next;
  }

  /**
   * Set the next node of this one
   * 
   * @param next represents the next node
   */
  public void setNext(Node<T> next) {
    this.next = next;
  }

  /**
   * @return
   */
  public Node<T> getNext() {
    return this.next;
  }

  /**
   * @return
   */
  public T getData() {
    return this.data;
  }
}
