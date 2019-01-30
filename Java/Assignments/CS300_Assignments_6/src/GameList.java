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

/**
 * This class is a list of objects of GameNode
 * 
 * @author XuXianda
 */
public class GameList {
  private GameNode list; // reference to the first GameNode in this list

  /**
   * Constructor
   */
  public GameList() // initializes list to start out empty
  {
    list = null;
  }

  /**
   * Adds the new node to the end of this list
   * 
   * @param newNode:the new node to be added
   */
  public void addNode(GameNode newNode) {
    if (list == null) { // If the list is empty, make the header list refer to the new node
      list = newNode;
    } else {
      GameNode temp = list; // Create a new GameNode reference to help reach the end of the list
      while (temp.getNext() != null) {
        temp = temp.getNext();
      }
      temp.setNext(newNode); // Set the next of the last node to the new node
    }
  }

  /**
   * Check whether the list contains a specific number
   * 
   * @param number:the number to be checked
   * @return:true if the number is contained, false otherwise
   */
  public boolean contains(int number) {
    boolean is_containing = true;

    if (list == null) {
      return false;
    }

    GameNode temp = list;
    while (temp.getNumber() != number) {
      if (temp.getNext() == null)
        break;
      temp = temp.getNext();
    }
    if (temp.getNext() == null && temp.getNumber() != number) {
      is_containing = false;
    }

    return is_containing;
  }

  /**
   * Display the list, returns a string with each number in the list separated by " -> "s, 
   * and ending with " -> END"
   */
  public String toString() {
    if (list == null) { // If the list is null, return null
      return null;
    }

    String output = "";
    GameNode temp = list;
    while (temp.getNext() != null) { // Retrieve every node in the list and display
      output = output.concat(String.valueOf(temp.getNumber()) + " -> ");
      temp = temp.getNext();
    }
    output = output.concat(String.valueOf(temp.getNumber()) + " -> END");

    return output;
  }

  /**
   * Apply the operation
   * 
   * @param number:the number to be applied to 
   * @param operator:the operation
   * @throws NullPointerException:when the node is at the end of the list
   */
  public void applyOperatorToNumber(int number, GameOperator operator) throws NullPointerException {
    GameNode temp = list; // Create a GameNode reference to help find the node containing the number
    while (temp.getNumber() != number) {
      if (temp.getNext() == null)
        break;
      temp = temp.getNext();
    }
    if (temp.getNext() == null) { // If the node containing the number is at the end of the list
      throw new NullPointerException(
          "The GameNode containing the number is at the end of the list!");
    }
    temp.applyOperator(operator); // Apply the operation
  }

}
