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
 * This class represents a generator for a fibonacci progression 
 * This class implements the Iterator<Integer> interface
 *
 * @author Bryce Xu
 */
public class FibonacciSequenceGenerator implements Iterator<Integer> {
  private final int SIZE; // number of elements in this sequence
  private int prev; // previous item in the sequence with respect to the current iteration
  private int next; // next item in the sequence with respect to the current iteration
  private int generatedCount; // number of items generated so far

  /**
   * Generates a fibonacci progression
   * @param size number of elements in the sequence
   */
  public FibonacciSequenceGenerator(int size) {
    if (size <= 0) {
      throw new IllegalArgumentException("WARNING: CANNOT create a sequence with size <= zero.");
    }
    // initialize the instance field
    this.SIZE = size;
    this.prev = 0;
    this.next = 1;
    this.generatedCount = 0;
  }

  /**
   * Override hasNext()
   * @return true if the current element in the iteration has a next element in this sequence, false
   *         otherwise
   */
  @Override
  public boolean hasNext() {
    // Time Complexity: O(1)
    return generatedCount < SIZE;
  }

  /**
   * Override next()
   * @return the current element in this iteration
   */
  @Override
  public Integer next() {
    // Time Complexity: O(1)
    if (!hasNext()) { // check if the current element has a next element in this sequence
      return null;
    }
    int current = prev;  // set the current element to prev
    generatedCount++;    // increment the number of generated elements so far
    prev = prev + next;  // increment the prev by next
    next = current;      // set the next to current
    return current;
  }

}
