//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: DrawingStackIterator.java
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
 * This class is used as an iterator of the DrawingStack
 * 
 * @author Xianda(Bryce) Xu, Jingcheng Wu
 *
 */
public class DrawingStackIterator implements Iterator<DrawingChange> {
  private Node<DrawingChange> next;// represents the next(actually current) node of the current one

  /**
   * Create a new iterator
   * 
   * @param top represents the top node of the stack
   */
  public DrawingStackIterator(Node<DrawingChange> top) {
    next = top;
  }

  /**
   * Check whether the current node has a next node
   * 
   * @return true if it has, false otherwise
   */
  @Override
  public boolean hasNext() {
    return next.getNext() == null;
  }

  /**
   * Move forward to the next node and return the current one
   * 
   * @return the current node
   */
  @Override
  public DrawingChange next() {

    // handle the situation where the current node is the end
    if (!hasNext())
      return null;

    Node<DrawingChange> current = next;// assign the cuurent with the current node
    next = next.getNext();// move forward
    return current.getData();// get the current node
  }

}


