//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title:           SEQUENCE GENERATOR
// Files:           Sequence.java, GeometricSequenceGenerator.java, FibonacciSequenceGenerator.java,
//                  DigitProductSequenceGenerator.java, SequenceGeneratorTests.java
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

import java.util.Iterator;

/**
 * This class tests the three sequence generator:
 * Geometric
 * Fibonacci
 * DigitProduction
 *
 * @author Bryce Xu
 */
public class SequenceGeneratorTests {
  public static void main(String[] args) {
    int fails = 0;
    if (!geometricSequenceGeneratorTest()) {
      System.out.println("geometricSequenceGeneratorTest() failed!");
      fails++;
    }
    if (!fibonacciSequenceGeneratorTest()) {
      System.out.println("fibonacciSequenceGeneratorTest() failed!");
      fails++;
    }
    if (!digitProductSequenceGeneratorTest()) {
      System.out.println("digitProductSequenceGeneratorTest() failed!");
      fails++;
    }
    if (fails == 0) { // if all tests passed, print out "All tests passed!"
      System.out.println("All tests passed!");
    }
  }

  /**
   * Check if the output of the geometric sequence generator is correct
   * @return true if the output is correct
   */
  private static boolean geometricSequenceGeneratorTest() {
    boolean passed = true;

    String output = "";
    Iterator<Integer> sequenceIterator = new GeometricSequenceGenerator(4, 3, 5);
    while (sequenceIterator.hasNext()) { // Iterate to fetch the next element
      output += sequenceIterator.next() + " ";
    }
    // The correct output:4 12 36 108 324
    if (!output.equals("4 12 36 108 324 "))
      passed = false;

    return passed;
  }

  /**
   * Check if the output of the fibonacci sequence generator is correct
   * @return true if the output is correct
   */
  private static boolean fibonacciSequenceGeneratorTest() {
    boolean passed = true;

    String output = "";
    Iterator<Integer> sequenceIterator = new FibonacciSequenceGenerator(8);
    while (sequenceIterator.hasNext()) {
      output += sequenceIterator.next() + " ";
    }
    // The correct output:0 1 1 2 3 5 8 13
    if (!output.equals("0 1 1 2 3 5 8 13 "))
      passed = false;

    return passed;
  }

  /**
   * Check if the output of the digit product sequence generator is correct
   * @return true if the output is correct
   */
  private static boolean digitProductSequenceGeneratorTest() {
    boolean passed = true;

    String output = "";
    Iterator<Integer> sequenceIterator = new DigitProductSequenceGenerator(14, 5).getIterator();
    while (sequenceIterator.hasNext()) {
      output += sequenceIterator.next() + " ";
    }
    // The correct output:14 18 26 38 62
    if (!output.equals("14 18 26 38 62 "))
      passed = false;

    return passed;
  }

}
