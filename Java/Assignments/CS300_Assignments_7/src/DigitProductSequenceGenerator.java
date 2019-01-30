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

import java.util.ArrayList;
import java.util.Iterator;

/**
 * This class represents a generator for a digit product progression 
 * This class implements the Iterator<Integer> interface
 *
 * @author Bryce Xu
 */
public class DigitProductSequenceGenerator {
  private final int INIT; // The first term in this sequence
  private final int SIZE; // The number of elements in this sequence
  private ArrayList<Integer> sequence; // The arraylist to store the sequence

  /**
   * Generates a digit progression
   * @param init initial value
   * @param size number of elements in the sequence
   */
  public DigitProductSequenceGenerator(int init, int size) {
    if (size <= 0) { // check for the precondition: size > 0, throws an IllegalArgumentException 
                     // if this precondition is not satisfied
      throw new IllegalArgumentException("WARNING: CANNOT create a sequence with size <= zero.");
    }
    if (init <= 0) { // check for the validity of init > 0, 
                     // throw an IllegalArgumentException if these two parameters are not valid
      throw new IllegalArgumentException(
          "WARNING: The starting element for digit product sequence cannot be "
              + "less than or equal to zero.");
    }
    // set the instance fields
    this.INIT = init;
    this.SIZE = size;
    sequence = new ArrayList<>();
    // generate the sequence
    generateSequence();
  }

  /**
   * Generate the sequence by hand
   */
  public void generateSequence() {
    sequence.clear(); // clear the sequence first
    sequence.add(INIT); // add the init to the sequence
    Integer current = INIT;
    String str;
    int product; // the multiply product of each digit
    int result; // the computation result
    for (int i = 0; i < SIZE - 1; i++) {
      str = current.toString();
      product = 1;
      result = current; // initialize the result as the current number
      for (int j = 0; j < str.length(); j++) { // compute the product
        Character ch = str.charAt(j);
        if (Integer.parseInt((ch.toString())) != 0) {
          product *= Integer.parseInt(ch.toString());
        }
      }
      result += product; // add product to the result
      sequence.add(result); // add result to the array list
      current = result;
    }
  }

  /**
   * Return the iterator
   * @return:the iterator of the sequence
   */
  public Iterator<Integer> getIterator() {
    return sequence.iterator();
  }

}
