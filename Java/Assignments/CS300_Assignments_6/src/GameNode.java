//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title:           Math Game
// Files:           GameApplication.java, GameList.java, GameNode.java, GameOperator.java,
//                  GameTests.java
// Course:          CS300 Fall 2018
//
// Author:          Bryce Xu
// Email:           xxu373@wisc.edu
// Lecturer's Name: Mouna Kacem
//
//////////////////// PAIR PROGRAMMERS COMPLETE THIS SECTION ///////////////////
//
// Partner Name:    None
// Partner Email:   None
// Partner Lecturer's Name: None
// 
// VERIFY THE FOLLOWING BY PLACING AN X NEXT TO EACH TRUE STATEMENT:
//   ___ Write-up states that pair programming is allowed for this assignment.
//   ___ We have both read and understand the course Pair Programming Policy.
//   ___ We have registered our team prior to the team registration deadline.
//
///////////////////////////// CREDIT OUTSIDE HELP /////////////////////////////
//
// Students who get help from sources other than their partner must fully 
// acknowledge and credit those sources of help here.  Instructors and TAs do 
// not need to be credited here, but tutors, friends, relatives, room mates, 
// strangers, and others do.  If you received no outside help from either type
//  of source, then please explicitly indicate NONE.
//
// Persons:         None
// Online Sources:  None
//
/////////////////////////////// 80 COLUMNS WIDE ///////////////////////////////

import java.util.Random;

/**
 * This class is the node in the list
 * 
 * @author XuXianda
 */
public class GameNode {
  private int number; // the number held within this node
  private GameNode next; // the next GameNode in the list, or null for the last node

  /**
   * Initializes number to random 1-9 value, and next to null
   * 
   * @param rng:the object of Random
   */
  public GameNode(Random rng) {
    number = rng.nextInt(9) + 1;
    next = null;
  }

  /**
   * Accessor for the number field
   * 
   * @return:the number
   */
  public int getNumber() {
    return number;
  }

  /**
   * Accessor for the next field
   * 
   * @return:the next node
   */
  public GameNode getNext() {
    return next;
  }

  /**
   * Mutator for the next field
   * 
   * @param next:the next node
   */
  public void setNext(GameNode next) {
    this.next = next;
  }

  /**
   * Apply the operation
   * 
   * @param operator:the operation
   * @throws NullPointerException:When the gamenode is at the end of the list
   */
  public void applyOperator(GameOperator operator) throws NullPointerException {
    if (this.next == null)
      throw new NullPointerException("This gamenode is at the end of the list!");
    number = operator.apply(number, next.getNumber()); // Do the calculation
    setNext(this.next.getNext()); // Set the next node
  }

}
