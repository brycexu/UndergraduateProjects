//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: P10 SJF Process Scheduler
// Files: CustomProcess.java, CustomProcessQueue.java, ProcessScheduler.java,
// ProcessScheduler.java and WaitingQueueADT.java
// Course: CS300 Fall 2018
//
// Author: Xianda Xu
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
 *
 * Waiting Queue Abstract Data Type
 *
 * @author Xianda Xu
 *
 * @param <T> the type of objects to be stored in this queue
 */
public interface WaitingQueueADT<T extends Comparable<T>> {

  /**
   * Insert a newObject in the priority queue
   *
   * @param newObject:an element to be added
   */
  public void enqueue(T newObject);

  /**
   * Remove and Return the item with the highest priority
   *
   * @return the element at front
   */
  public T dequeue();

  /**
   * Return without removing the item with the highest priority
   *
   * @return the element at front
   */
  public T peek();

  /**
   * Return size of the waiting queue
   *
   * @return the size of the waiting queue
   */
  public int size();

  /**
   * Check if the waiting queue is empty
   *
   * @return true if the waiting queue is empty
   */
  public boolean isEmpty();

}
