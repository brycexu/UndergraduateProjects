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
 * Test the functionality of different classes
 * 
 * @author Jingcheng Wu
 *
 */
public class ProcessSchedulerTests {

  /**
   * Test the method enqueue of class CustomProcessQueue
   * 
   * @return true if the queue enqueue all process properly, false otherwise
   */
  public static boolean testEnqueueCustomProcessQueue() {
    CustomProcessQueue queue = new CustomProcessQueue();// create a new CustomProcessQueue

    // Create 3 processes and enqueue them
    queue.enqueue(new CustomProcess(10));// enqueue a process with a burstTime of 10
    if (queue.peek().getBurstTime() != 10)// front should be one whose burstTime is 10
      return false;
    queue.enqueue(new CustomProcess(1));// enqueue a process with a burstTime of 1
    if (queue.peek().getBurstTime() != 1)// front should be one whose burstTime is 1
      return false;
    queue.enqueue(new CustomProcess(15));// enqueue a process with a burstTime of 15
    if (queue.peek().getBurstTime() != 1)// front should remain the one whose burstTime is 1
      return false;

    return true;// All passed, return true
  }

  /**
   * Test the method dequeue of the class CustomProcessQueue
   * 
   * @return true if the method works properly, false otherwise
   */
  public static boolean testDequeueCustomProcessQueue() {
    CustomProcessQueue queue = new CustomProcessQueue();// Create a new CustomProcessQueue

    // the queue enqueues several processes with the burstTimes of 5, 6 , 4, 15 and 9 in sequence.
    queue.enqueue(new CustomProcess(5));
    queue.enqueue(new CustomProcess(6));
    queue.enqueue(new CustomProcess(4));
    queue.enqueue(new CustomProcess(15));
    queue.enqueue(new CustomProcess(9));

    return queue.dequeue().getBurstTime() == 4 && queue.dequeue().getBurstTime() == 5
        && queue.dequeue().getBurstTime() == 6 && queue.dequeue().getBurstTime() == 9
        && queue.dequeue().getBurstTime() == 15;// Examine the order of dequeue follows the priority
  }

  /**
   * Test the functionality of class CustomProcess
   * 
   * @return true if the fields of instances of CustomProcess are correct, false otherwise
   */
  public static boolean testCustomProcess() {
    // 8 processes were created before
    CustomProcess process9 = new CustomProcess(1);// A CustomProcess with Id of 9 and burstTime of 1
    CustomProcess process10 = new CustomProcess(10);// A CustomProcess with Id of 10 and burstTime
                                                    // of 10
    return process9.getBurstTime() == 1 && process9.getProcessID() == 9// Examine their fields
        && process10.getBurstTime() == 10 && process10.getProcessID() == 10;
  }

  /**
   * Test the functionality of class ProcessScheduler
   * 
   * @return true if it works properly, false otherwise
   */
  public static boolean testSchedular() {
    ProcessScheduler scheduler = new ProcessScheduler();// Create a new scheduler

    // Create 3 new processes with burstTimes of 1, 5 and 3 sequentially and schedule them
    CustomProcess process11 = new CustomProcess(1);
    CustomProcess process12 = new CustomProcess(5);
    CustomProcess process13 = new CustomProcess(3);
    scheduler.scheduleProcess(process11);
    scheduler.scheduleProcess(process12);
    scheduler.scheduleProcess(process13);

    String run = scheduler.run();// their order should be 1, 3 and 5 according to SJF principle
    String end = scheduler.end();// get the ending

    // run: 1 refers to 1, 4 refers to 1+3 and 9 refers to 1+3+5
    // end: 3 refers to 3 processes and 9 refers to the amount of the elapsed time
    return run.contains("1") && run.contains("4") && run.contains("9") && end.contains("3")
        && end.contains("9");
  }

  /**
   * The driver that run all the tests
   * 
   * @param args represents the given arguments
   */
  public static void main(String[] args) {
    // print the status of all tests
    System.out
        .println("Status of testEnqueueCustomProcessQueue: " + testEnqueueCustomProcessQueue());
    System.out
        .println("Statur of testDequeueCustomProcessQueue: " + testDequeueCustomProcessQueue());
    System.out.println("Statur of testCustomProcess: " + testCustomProcess());
    System.out.println("Statur of testSchedular: " + testSchedular());
  }

}
