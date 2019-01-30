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
 * This class is the test of the class GameList and GameNode
 * 
 * @author XuXianda
 */
public class GameTests {
  /**
   * The main method, prints "All tests passed!" if all tests are passed
   * @param args
   */
  public static void main(String[] args) {
    int fails = 0;
    if (!TestGameNode1()) {
      System.out.println("TestGameNode1() failed!");
      fails++;
    }
    if (!TestGameNode2()) {
      System.out.println("TestGameNode2() failed!");
      fails++;
    }
    if (!TestGameList1()) {
      System.out.println("TestGameList1() failed!");
      fails++;
    }
    if (!TestGameList2()) {
      System.out.println("TestGameList2() failed!");
      fails++;
    }
    if (fails == 0) {
      System.out.println("All tests passed!");
    }
  }

  /**
   * Tests whether objects of GameNode can be linked together
   * @return:true if the test passed
   */
  private static boolean TestGameNode1() {
    boolean passed = true;

    Random rng = new Random();
    GameNode node1 = new GameNode(rng);
    GameNode node2 = new GameNode(rng);
    node1.setNext(node2); // node1->node2
    if (node1.getNext().getNumber() != node2.getNumber())
      passed = false;

    return passed;
  }

  /**
   * Tests whether operation can be applied to objects of GameNode
   * @return:true if the test passed
   */
  private static boolean TestGameNode2() {
    boolean passed = true;

    Random rng = new Random();
    GameNode node1 = new GameNode(rng);
    GameNode node2 = new GameNode(rng);
    GameNode node3 = new GameNode(rng);
    node1.setNext(node2);
    node2.setNext(node3); // node1->node2->node3
    int firstNumber = node2.getNumber();
    int secondNumber = node3.getNumber();
    int result = firstNumber * secondNumber;
    GameOperator operator1 = GameOperator.getFromChar('x'); // Apply node1*node2
    node2.applyOperator(operator1);
    if (node2.getNumber() != result) // Compare the result returned and the ground-truth
      passed = false;

    return passed;
  }

  /**
   * Tests whether the object of GameList can add nodes
   * @return:true if the test passed
   */
  private static boolean TestGameList1() {
    boolean passed = true;

    Random rng = new Random();
    GameList gameList = new GameList();
    GameNode node1 = new GameNode(rng);
    for (int i = 0; i < 3; i++) {
      gameList.addNode(new GameNode(rng));
    }
    gameList.addNode(node1);
    for (int i = 0; i < 3; i++) {
      gameList.addNode(new GameNode(rng));
    }
    // There are totally 7 nodes in the list
    if (!gameList.contains(node1.getNumber())) // Check whether node1 is added into the list
      passed = false;

    return passed;
  }

  /**
   * Tests whether the operation can be applied to the list
   * @return:true if the test passed
   */
  private static boolean TestGameList2() {
    boolean passed = true;

    Random rng = new Random();
    GameList gameList = new GameList();
    GameNode node1 = new GameNode(rng);
    GameNode node2 = new GameNode(rng);
    int result = node1.getNumber() * node2.getNumber();
    gameList.addNode(node1);
    gameList.addNode(node2);
    for (int i = 0; i < 5; i++) {
      gameList.addNode(new GameNode(rng));
    } // There are totally 7 nodes in the list
    GameOperator operator1 = GameOperator.getFromChar('x'); // Apply node1*node2
    gameList.applyOperatorToNumber(node1.getNumber(), operator1);
    if (!gameList.contains(result)) // Check whether the result is contained in the list
      passed = false;

    return passed;
  }
}
