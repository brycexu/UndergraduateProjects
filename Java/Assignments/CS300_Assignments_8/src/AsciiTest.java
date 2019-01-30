//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: AsciiTest.java
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

/**
 * This class is used to test the functionalities of some classes
 * 
 * @author Xianda(Bryce) Xu, Jingcheng Wu
 *
 */
public class AsciiTest {

  /**
   * This is the main where we run the tests
   * 
   * @param args represents the input argument of the main
   */
  public static void main(String[] args) {
    System.out.println("***Status of all tests: " + runStackTestSuite() + "***");// Show the status
                                                                                 // of all tests
  }

  /**
   * Test the functionality of methods of push and peek of the stack
   * 
   * @return true if it correctly pushes and peeks, false otherwise
   */
  public static boolean testStackPushPeek() {
    boolean report = true;// initialize the statue report
    DrawingStack stack = new DrawingStack();// create a new stack

    // create 2 new changes
    DrawingChange change1 = new DrawingChange(1, 1, 'a', 'b');
    DrawingChange change2 = new DrawingChange(2, 2, 'c', 'd');

    // push the stack with the 2 change2
    stack.push(change1);
    stack.push(change2);

    // peek the stack and check whether it is correct
    if (stack.peek() != change2)
      report = false;
    return report;// return the report
  }

  /**
   * Check the functionality of methods of pop, size and isEmpty of the stack
   * 
   * @return true if it correctly pops, gets the size and detect empty
   */
  public static boolean testStackPop() {
    boolean report = true;// initialize the status report
    DrawingStack stack = new DrawingStack();// create a new stack

    // create 2 new changes
    DrawingChange change1 = new DrawingChange(1, 1, 'a', 'b');
    DrawingChange change2 = new DrawingChange(2, 2, 'c', 'd');

    // push the stack with the 2 changes
    stack.push(change1);
    stack.push(change2);

    // pop the stack twice and take a real-time check of the size, and check the correctness at the
    // same time
    if (stack.size() != 2 || stack.pop() != change2 || stack.size() != 1)
      report = false;
    if (stack.pop() != change1 || !stack.isEmpty())
      report = false;
    return report;// return the report
  }

  /**
   * Work as a driver to run all the tests
   * 
   * @return true if all tests pass, false otherwise
   */
  public static boolean runStackTestSuite() {

    // show the detection outcomes of all tests
    System.out.println("Status of testStackPushPeek: " + testStackPushPeek());
    System.out.println("Status of testStackPop: " + testStackPop());

    return testStackPushPeek() && testStackPop();// report an overall outcome
  }
}
