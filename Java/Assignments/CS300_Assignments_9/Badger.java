//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: Badger.java
// Files: Badger.java, Sett.java, P9Tests.java
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
 * This class represents a Badger which is designed to live in a Sett. 
 * Each Badger object represents a single node within a BST (known as a Sett).
 * @author Bryce Xu
 */
public class Badger {
  private Badger leftLowerNeighbor; //The left node
  private Badger rightLowerNeighbor; //The right node
  private int size; //The size of the badger

  /**
   * The constructor
   * @param size:The size of the badger
   */
  public Badger(int size) {
    this.size = size;
  }

  /**
   * Retrieves neighboring badger that is smaller than this one
   * @return:The left lower neighbor of current badger
   */
  public Badger getLeftLowerNeighbor() {
    return leftLowerNeighbor;
  }

  /**
   * Changes this badger's lower left neighbor
   * @param leftLowerNeighbor:The new left lower neighbor of current badger
   */
  public void setLeftLowerNeighbor(Badger leftLowerNeighbor) {
    this.leftLowerNeighbor = leftLowerNeighbor;
  }

  /**
   * Retrieves neighboring badger that is larger than this one
   * @return:The right lower neighbor of current badger
   */
  public Badger getRightLowerNeighbor() {
    return rightLowerNeighbor;
  }

  /**
   * Changes this badger's lower right neighbor
   * @param rightLowerNeighbor:The new right lower neighbor of current badger
   */
  public void setRightLowerNeighbor(Badger rightLowerNeighbor) {
    this.rightLowerNeighbor = rightLowerNeighbor;
  }

  /**
   * Retrieves the size of this badger
   * @return:The size of current badger
   */
  public int getSize() {
    return size;
  }
}
