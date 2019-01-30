//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title:           Math Game
// Files:           GameApplication.java, GameList.java, GameNode.java, GameOperator.java,
//                  GameTests.java
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
// Online Sources:  https://www.cnblogs.com/ylz8401/p/7234687.html
//
/////////////////////////////// 80 COLUMNS WIDE ///////////////////////////////

import java.util.Random;
import java.util.Scanner;

/**
 * This class is the application of the math game with a user-interactive screen
 * 
 * @author XuXianda
 */
public class GameApplication {
  
  /**
   * The main method, used to run the game
   * 
   * @param args
   */
  public static void main(String[] args) {
    // The way to generate random numbers within a range (MIN,MAX)
    // int randNumber = rand.nextInt(MAX - MIN + 1) + MIN;
    Random rand = new Random();
    Scanner scnr = new Scanner(System.in);
    int goal = rand.nextInt(99 - 10 + 1) + 10; // The goal
    int moves = 0; // The number of moves
    String command; // The input
    char operation; // The operation
    int number = 0; // The number
    GameList gameList = new GameList();
    GameOperator operator;
    for (int i = 0; i < 7; i++) {
      gameList.addNode(new GameNode(rand)); // Initialize by adding 7 nodes to the game list
    }
    while (true) {
      // The prompt
      System.out.println("Goal: " + goal + " Moves Taken: " + moves);
      System.out.println("Puzzle: " + gameList.toString());
      System.out
          .print("Number and Operation " + GameOperator.ALL_OPERATORS.toString() + " to Apply: ");
      command = scnr.nextLine(); // Read the input
      command = command.trim(); // Remove whitespaces
      command = command.toLowerCase(); // Change commond to lower case
      if (command.equals("quit")) {
        System.out.println("Bye!"); // If command is 'quit', quit the game
        break;
      }
      if (command.length() <= 1) {
        System.out.println("WARNING: Please enter a correct command!");
        System.out.println();
        continue;
      }
      operation = command.charAt(command.length() - 1); // Get the operation
      try { // Deal with the NumberFormatException
        number = Integer.parseInt(command.substring(0, command.length() - 1));
      } catch (NumberFormatException e) {
        System.out.println("WARNING: Please enter a correct command!");
        System.out.println();
        continue;
      }
      operator = GameOperator.getFromChar(operation); // Get the operator from GameOperator
      if (operator == null) { // If no operation found in GameOperator, post a warning
        System.out.println("WARNING: Please enter a correct operation!");
        System.out.println();
        continue;
      }
      if (!gameList.contains(number)) { // If no number found in game list, post a warning
        System.out.println("WARNING: Please enter a correct number!");
        System.out.println();
        continue;
      }
      gameList.applyOperatorToNumber(number, operator); // Apply the calculation
      gameList.addNode(new GameNode(rand)); // Add a new node at the end
      moves++;
      System.out.println();
      if (gameList.contains(goal)) { // If goal found in the game list, win the game
        System.out.println("Congratulations, you won in " + moves + " moves.");
        System.out.println("Solution: " + gameList.toString()); // Display the game list
        break;
      }
    }
  }
}
