//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: Sett.java
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
import java.util.List;
import java.util.NoSuchElementException;

/**
 * This class represents a Sett, where a group of Badgers live together. 
 * Each Sett is organized as a BST of Badger nodes.
 * @author Bryce Xu
 */
public class Sett {
  private Badger topBadger; // The root

  /**
   * The constructor
   */
  public Sett() {
    topBadger = null;
  }

  /**
   * Retrieve the top Badger within this Sett (the one that was settled first)
   * @return:The Badger living on the top of the current Sett
   */
  public Badger getTopBadger() {
    return topBadger;
  }

  /**
   * Checks whether this Sett is empty
   * @return:true if this Sett is empty, false otherwise
   */
  public boolean isEmpty() {
    return topBadger == null;
  }

  /**
   * Creates a new Badger object with the specified size, and inserts them into this Sett (BST)
   * @param size:The size of the new Badger that will be settled
   * @throws java.lang.IllegalArgumentException
   */
  public void settleBadger(int size) throws java.lang.IllegalArgumentException {
    Badger newBadger = new Badger(size);
    //If topBadger is null, the new badger would be the root
    if (topBadger == null) {
      topBadger = newBadger;
      newBadger.setLeftLowerNeighbor(null);
      newBadger.setRightLowerNeighbor(null);
    } else {
      settleHelper(topBadger, newBadger); //Use settleHelper to insert
    }
  }

  /**
   * This recursive helper method is used to help settle a new Badger within this Sett
   * @param current:The current Badger
   * @param newBadger:The new Badger that needs to be settled within this Sett
   * @throws java.lang.IllegalArgumentException
   */
  private void settleHelper(Badger current, Badger newBadger)
      throws java.lang.IllegalArgumentException {
    while (current != null) {
      //If there already exists a badger with the same size, an exception would be thrown
      if (current.getSize() == newBadger.getSize())
        throw new IllegalArgumentException(
            "WARNING: failed to settle the badger with size " + newBadger.getSize()
                + ", as there is already a badger with the same size in this sett");
      else if (newBadger.getSize() < current.getSize()) {
        //If the size of the new badger is lower than that of the current badger,
        //If the current badger does not have a left child, the new badger would be its left child
        //Otherwise, the search continues
        if (current.getLeftLowerNeighbor() == null) {
          current.setLeftLowerNeighbor(newBadger);
          current = null;
        } else {
          current = current.getLeftLowerNeighbor();
        }
      } else if (newBadger.getSize() > current.getSize()) {
        //If the size of the new badger is greater than that of the current badger,
        //If the current badger does not have a right child, the new badger would be its right child
        //Otherwise, the search continues
        if (current.getRightLowerNeighbor() == null) {
          current.setRightLowerNeighbor(newBadger);
          current = null;
        } else {
          current = current.getRightLowerNeighbor();
        }
      }
    }
    //Set both left and right child of the new badger to null
    newBadger.setLeftLowerNeighbor(null);
    newBadger.setRightLowerNeighbor(null);
  }

  /**
   * Finds a Badger of a specified size in this Sett
   * @param size:The size of the Badger object to search for and return
   * @return:The Badger found with the specified size
   * @throws java.util.NoSuchElementException
   */
  public Badger findBadger(int size) throws java.util.NoSuchElementException {
    Badger foundBadger;
    //If the tree is empty, an exception would be thrown
    if (topBadger == null)
      throw new NoSuchElementException(
          "WARNING: failed to find a badger with size " + size + " in the sett");
    else
      foundBadger = findHelper(topBadger, size); //Use findHelper to find the badger
    return foundBadger;
  }

  /**
   * This recursive helper method is used to help find a Badger within this Sett
   * @param current:The current Badger that is the root of a (sub) tree that we are searching for 
   *        a Badger with the specified size within
   * @param size:The size of the Badger object to search for and return
   * @return:The Badger found with the specified size
   * @throws java.util.NoSuchElementException
   */
  private Badger findHelper(Badger current, int size) throws java.util.NoSuchElementException {
    while (current != null) {
      //If the size of the current badger equals to the wanted size, success
      if (current.getSize() == size)
        return current;
      else if (size < current.getSize()) {
        //If the wanted size is lower than the size of the current badger,
        //If its left child is null, fail
        //If it has a left child, keep searching
        if (current.getLeftLowerNeighbor() == null)
          throw new NoSuchElementException(
              "WARNING: failed to find a badger with size " + size + " in the sett");
        else
          current = current.getLeftLowerNeighbor();
      } else if (size > current.getSize()) {
        //If the wanted size is greater than the size of the current badger,
        //If its right child is null, fail
        //If it has a right child, keep searching
        if (current.getRightLowerNeighbor() == null)
          throw new NoSuchElementException(
              "WARNING: failed to find a badger with size " + size + " in the sett");
        else
          current = current.getRightLowerNeighbor();
      }
    }
    return null;
  }

  /**
   * Counts how many Badgers live in this Sett
   * @return:The number of Badgers living in this Sett
   */
  public int countBadger() {
    int count = 0;
    if (topBadger != null)
      count = countHelper(topBadger); //Use countHelper to count the number of badgers in the tree
    return count;
  }

  /**
   * This recursive helper method is used to help count the number of Badgers in this Sett
   * @param current:The current Badger that is the root of a (sub) tree that we are counting the 
   *        number of Badgers within
   * @return:the number of Badgers living in the Sett rooted at the current Badger
   */
  private int countHelper(Badger current) {
    //Use recursion to count the number of badgers in the tree
    if (current == null)
      return 0;
    if (current.getLeftLowerNeighbor() == null && current.getRightLowerNeighbor() == null)
      return 1;
    else
      return countHelper(current.getLeftLowerNeighbor())
          + countHelper(current.getRightLowerNeighbor());
  }

  /**
   * Gets all Badgers living in the Sett as a list in ascending order of their size: smallest one 
   * in the front (at index zero), through the largest one at the end (at index size-1)
   * @return:A list of all Badgers living in the Sett in ascending order by size
   */
  public java.util.List<Badger> getAllBadgers() {
    List<Badger> badgerList = (List<Badger>) new Object();
    if (topBadger != null)
      getAllHelper(topBadger, badgerList); //Use getAllHelper to get all badgers into a list
    return badgerList;
  }

  /**
   * This recursive helper method is used to help collect the Badgers within this Sett into a List
   * @param current:The current Badger that is the root of a (sub) tree that we are collecting all 
   *        contained Badgers within, into the allBadgers List
   * @param allBadgers:The list of all Badgers living in the Sett that is rooted at the current 
   *        Badger node. The contents of this list should be in ascending order by Badger size
   */
  private void getAllHelper(Badger current, java.util.List<Badger> allBadgers) {
    //Use recursion to add all badgers into a list
    //Since it requires the sequence from smallest to largest, inorder is what we should use
    if (current == null)
      return;
    getAllHelper(current.getLeftLowerNeighbor(), allBadgers);
    allBadgers.add(current);
    getAllHelper(current.getRightLowerNeighbor(), allBadgers);
  }

  /**
   * Computes the height of the Sett, as the number of nodes from root to the deepest leaf Badger 
   * node
   * @return:The depth of this Sett
   */
  public int getHeight() {
    int height = 0;
    if (topBadger != null)
      height = getHeightHelper(topBadger); //Use getHeightHelper to get the height
    return height;
  }

  /**
   * This recursive helper method is used to help compute the height of this Sett
   * @param current:The current Badger that is the root of a (sub) tree that we are calculating 
   *                the height of
   * @return:The height of the (sub) tree that we are calculating
   */
  private int getHeightHelper(Badger current) {
    //Use recursion to get the height (the maximum)
    if (current == null)
      return 0;
    else {
      int lDepth = getHeightHelper(current.getLeftLowerNeighbor());
      int rDepth = getHeightHelper(current.getRightLowerNeighbor());
      if (lDepth > rDepth)
        return lDepth + 1;
      else
        return rDepth + 1;
    }
  }

  /**
   * Retrieves the largest Badger living in this Sett
   * @return:The largest Badger living in this Sett
   */
  public Badger getLargestBadger() {
    //Since largest badger is at the right bottom
    //We trace to it by always folowing the right child
    Badger largestBadger = null;
    if (topBadger != null) {
      largestBadger = topBadger;
      while (largestBadger.getRightLowerNeighbor() != null) {
        largestBadger = largestBadger.getRightLowerNeighbor();
      }
    }
    return largestBadger;
  }

  /**
   * Empties this Sett, to no longer contain any Badgers
   */
  public void clear() {
    //Due to Java automatic garbage collection, we can just set topBadger to null to clear the tree
    topBadger = null;
  }

}
