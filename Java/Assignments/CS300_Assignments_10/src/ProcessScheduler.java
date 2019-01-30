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

import java.util.*;

/**
 * Driver of the scheduler
 * 
 * @author Jingcheng Wu
 *
 */
public class ProcessScheduler {

  private int currentTime; // stores the current time after the last run
  private int numProcessesRun; // stores the number of processes run so far
  private CustomProcessQueue queue; // this processing unit's custom process queue

  // the header prompt in UI
  private static final String header =
      "==========   Welcome to the SJF Process Scheduler App   ========";
  // the ending prompt in UIs
  private static final String prompt =
      "\nEnter command:\n[schedule <burstTime>] or [s <burstTime>]\n[run] or [r]\n[quit] or [q]\n";

  /**
   * Create a new scheduler and assign proper values to all fields
   */
  public ProcessScheduler() {
    queue = new CustomProcessQueue();
    currentTime = 0;
    numProcessesRun = 0;
  }

  /**
   * Schedule a new process
   * 
   * @param process represents the new process
   */
  public void scheduleProcess(CustomProcess process) {
    queue.enqueue(process);// enqueue the process
    numProcessesRun++;// the number of processes increments
  }

  /**
   * Run all scheduled processes and return corresponding messages
   * 
   * @return corresponding messages
   */
  public String run() {
    String toPrint;// the String to be returned
    if (queue.size() <= 1)// The starting message up to the number of peocesses
      toPrint = "Starting " + queue.size() + " process\n\n";
    else
      toPrint = "Starting " + queue.size() + " processes\n\n";
    while (!queue.isEmpty()) {// Run the processes one by one until the queue is empty
      CustomProcess process = queue.dequeue();
      toPrint += // before the run, report the current time and Id and burstTime of the process
          ("Time " + currentTime + " : Process ID " + process.getProcessID() + " Starting.\n");
      currentTime += process.getBurstTime();// run the process
      toPrint += // after the run, report the current time and Id and burstTime of the process
          ("Time " + currentTime + ": Process ID " + process.getProcessID() + " Completed.\n");
    }
    // All processes are complete, and add a summary
    toPrint += ("\nTime " + currentTime + ": All scheduled processes completed.\n");
    return toPrint;
  }

  /**
   * End the scheduler and report the current time and the number of the processes
   * 
   * @return the good-bye message
   */
  public String end() {
    String toPrint = numProcessesRun + " processes run in " + currentTime + " units of time!\n"
        + "Thank you for using our scheduler!\n" + "Goodbye!\n";
    return toPrint;
  }

  /**
   * The main method represents the driver
   * 
   * @param args represents the given String argument
   */
  public static void main(String[] args) {
    Scanner scnr = new Scanner(System.in);// Create a new Scanner
    System.out.println(header);// print the header UI prompt
    ProcessScheduler scheduler = new ProcessScheduler();// Create a new scheduler
    String command = "";// initialize the user's command

    while (!command.equals("q") && !command.equals("quit")) {// Keep going until detect quit command
      System.out.println(prompt);// Give out the command prompt
      command = scnr.nextLine().trim().toLowerCase();// Scan the user's input
      String[] parts = command.split(" ");
      String indicator = parts[0];// indicator represents the part that indicates the operation

      // The operation is to schedule a process
      if (indicator.equals("schedule") || indicator.equals("s")) {
        String stringOfTime = "";// initialize burstTime in String

        try {
          stringOfTime = parts[1];// try to fetch the burstTime
        } catch (Exception excpt) {// if there is no given burstTime param, report
          System.out.println("WARNING: Please enter a valid command!\n");
          continue;// skip this loop and retry
        }

        int time = 0;// initial the burstTime in integer
        try {
          time = Integer.parseInt(stringOfTime);// try to convert the String to int
        } catch (Exception excpt) {// if fails, report it
          System.out.println("WARNING: burst time MUST be an integer!\n");
          continue;// skip this loop and retry
        }

        try {
          if (time <= 0)// if the time is not positive, throw an exceptions
            throw new Exception();
        } catch (Exception excpt) {// report it
          System.out.println("WARNING: burst time MUST be greater than 0!\n");
          continue;// skip this loop and retry
        }

        CustomProcess process = new CustomProcess(time);
        scheduler.scheduleProcess(process);// schedule the process
        System.out.println("Process ID " + process.getProcessID() + " scheduled. Burst Time = "
            + process.getBurstTime() + "\n");// print the message of the process
      }

      else if (indicator.equals("run") || indicator.equals("r")) {// run operation detected
        String toPrint = scheduler.run();// run all scheduled processes and fetch the messages
        System.out.println(toPrint);// print the messages
      } else if (indicator.equals("quit") || indicator.equals("q")) {/// quit operation detected
        String toPrint = scheduler.end();// end the scheduler and fetch the messages
        System.out.println(toPrint);// print the messages
      } else {// if the indicator fits no operation, print a warning and retry
        System.out.println("WARNING: Please enter a valid command!\n");
      }
    }

  }
}
