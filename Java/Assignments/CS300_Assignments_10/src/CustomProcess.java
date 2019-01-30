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
 * This class represents the type for the processes in our application
 *
 * @author Xianda Xu
 */
public class CustomProcess implements Comparable<CustomProcess> {

  // stores the id to be assigned to the next process to be created
  private static int nextProcessId = 1;
  // unique identifier for this process
  private final int PROCESS_ID;
  // time required by this process for CPU execution
  private int burstTime;

  /**
   * Constructor of the class CustomProcess
   *
   * @param burstTime:the time it takes to run the process
   */
  public CustomProcess(int burstTime) {
    this.PROCESS_ID = CustomProcess.nextProcessId; // set the PROCESS_ID
    CustomProcess.nextProcessId++; // increment the nextProcessID
    this.burstTime = burstTime; // set the burstTime
  }

  /**
   * Compare this CustomProcess to another one (other)
   *
   * @param other:one another object of the class CustomProcess
   * @return : -1 if this object has smaller burstTime than the other object 0 if this object has
   *         the same burstTime as the other object 1 if this object has greater burstTime than the
   *         other object
   */
  @Override
  public int compareTo(CustomProcess other) {
    if (this.getBurstTime() < other.getBurstTime())
      return -1;
    else if (this.getBurstTime() == other.getBurstTime())
      if (this.PROCESS_ID < other.PROCESS_ID)
        return -1;
      else
        return 1;
    else
      return 1;
  }

  /**
   * Accessor of PROCESS_ID
   *
   * @return the PROCESS_ID of this object
   */
  public int getProcessID() {
    return this.PROCESS_ID;
  }

  /**
   * Accessor of burstTime
   *
   * @return the burstTime of this object
   */
  public int getBurstTime() {
    return this.burstTime;
  }
}
