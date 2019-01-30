//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: DrawingStack.java
// Files: AsciiArt.java, AsciiTest.java, Canvas.java, DrawingChange.
// java, DrawingStack.java, DrawingStackIterator.java
// Course: CS300 Fall 2018
//
// Author: Bryce Xu
// Email: xxu373@wisc.edu
// Lecturer's Name: Mouna Kacem
//
//////////////////// PAIR PROGRAMMERS COMPLETE THIS SECTION ///////////////////
//
// Partner Name: Jingcheng Wu
// Partner Email: jwu446@wisc.edu
// Partner Lecturer's Name: Mouna Kacem
//
// VERIFY THE FOLLOWING BY PLACING AN X NEXT TO EACH TRUE STATEMENT:
// _X_ Write-up states that pair programming is allowed for this assignment.
// _X_ We have both read and understand the course Pair Programming Policy.
// _X_ We have registered our team prior to the team registration deadline.
//
///////////////////////////// CREDIT OUTSIDE HELP /////////////////////////////
//
// Students who get help from sources other than their partner must fully
// acknowledge and credit those sources of help here. Instructors and TAs do
// not need to be credited here, but tutors, friends, relatives, room mates,
// strangers, and others do. If you received no outside help from either type
// of source, then please explicitly indicate NONE.
//
// Persons: None
// Online Sources: None
//
/////////////////////////////// 80 COLUMNS WIDE ///////////////////////////////

import java.util.Iterator;

/**
 * Represents the stack of DrawingChange used in this assignment
 * 
 * @author Xianda(Bryce) Xu, Jingcheng Wu
 *
 */
public class DrawingStack implements StackADT<DrawingChange> {
  Node<DrawingChange> top;// refers to the top of the stack
  int size;// refers to the size of the stack

  /**
   * Create new DrawingStack
   */
  public DrawingStack() {
    top = null;// no node
    size = 0;// size = 0
  }

  /**
   * Add a new node on the top of the stack
   * 
   * @param element represents the added node
   * @throws IllegalArgumentException if the argument is illegal
   */
  @Override
  public void push(DrawingChange element) throws IllegalArgumentException {
    Node<DrawingChange> newNode = new Node<>(element, top);// new top should have current top as its
                                                           // next node
    top = newNode;// refresh the top field
    size++;// increments the size
  }

  /**
   * Get and remove the top
   * 
   * @return current top element
   */
  @Override
  public DrawingChange pop() {
    if (isEmpty()) {// if there is no node, throw the corresponding exception
      throw new NullPointerException(
          "WARNING: The Stack is empty. Unable " + "to execute a pop operation.");
    }
    DrawingChange remove = top.getData();
    top = top.getNext();// refresh the top field
    size--;// size decrements
    return remove;
  }

  /**
   * Get the top of the stack
   * 
   * @return the top of the stack
   */
  @Override
  public DrawingChange peek() {
    if (isEmpty()) {// if there is no node, throw the corresponding exception
      throw new NullPointerException(
          "WARNING: The Stack is empty. Unable " + "to execute a pop operation.");
    }
    return top.getData();// return the element of the node
  }

  /**
   * Check whether the stack is empty
   * 
   * @return true if it is empty, false otherwise
   */
  @Override
  public boolean isEmpty() {
    return top == null;
  }

  /**
   * Get the current size of the stack
   * 
   * @return the size of the stack
   */
  @Override
  public int size() {
    return size;
  }

  /**
   * @return
   */
  @Override
  public Iterator<DrawingChange> iterator() {
    return new DrawingStackIterator(top);
  }
}


