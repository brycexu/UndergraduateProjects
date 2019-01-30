//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: AsciiArt.java
// Files: AsciiArt.java, AsciiTest.java, Canvas.java, DrawingChange.
// java, DrawingStack.java, DrawingStackIterator.java
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

import java.util.Scanner;
import java.util.ArrayList;
import java.util.InputMismatchException;

/**
 * This class is used as a driver to implement the user interface
 * 
 * @author Xianda(Bryce) Xu, Jingcheng Wu
 *
 */
public class AsciiArt {

  /**
   * Main method implements user interface
   * 
   * @param args represents the input argument of the main method
   */
  public static void main(String[] args) {
    Canvas canvas = null;
    // The prompt of menu
    String menu = "======== MENU ========\r\n" + "[1] Create a new canvas\r\n"
        + "[2] Draw a character\r\n" + "[3] Undo drawing\r\n" + "[4] Redo drawing\r\n"
        + "[5] Show current canvas\r\n" + "[6] Show drawing history\r\n" + "[7] Exit\r\n" + "> ";
    ArrayList<String> history = new ArrayList<String>();// used to store past changes
    String currentUndo = "";// used to retrieve undone change if we redo it
    int move = 0;// used to get user's input
    Scanner scnr = new Scanner(System.in);
    while (move != 7) {
      System.out.print(menu);
      String input = scnr.next().trim();

      // if the input is not a number
      try {
        move = Integer.parseInt(input);// fetch the user's input
      } catch (IllegalArgumentException excpt) {
        System.out.println(excpt.getMessage());// invalid, print message
        move = 0;
      }

      // check the input to determine the operations
      switch (move) {
        case 1:// if move is 1
          System.out.print("Width > ");
          int width = scnr.nextInt();// fetch the width
          System.out.print("Height > ");
          int height = scnr.nextInt();// fetch the height
          canvas = new Canvas(width, height);// create the corresponding canvas
          break;
        case 2:// if move is 2
          System.out.print("Row > ");
          int row = scnr.nextInt();// fetch the x position
          System.out.print("Col > ");
          int col = scnr.nextInt();// fetch the y position
          System.out.print("Character > ");
          char character = scnr.next().trim().charAt(0);// fetch the character
          canvas.draw(row, col, character);// draw the character
          history.add(0, // store the change in string in history
              // when displaying, display (col, row)
              (history.size() + 1) + ". draw '" + character + "' on (" + col + "," + row + ")");
          break;
        case 3:// if move is 3
          canvas.undo();// undo
          currentUndo = history.get(0);// store the undone change
          history.remove(0);// remove the undone change from history
          break;
        case 4:// if move is 4
          canvas.redo();// redo
          history.add(0, currentUndo);// retrieve the redone change into history
          break;
        case 5:// if move is 5
          canvas.printDrawing();// print the draw
          break;
        case 6:// if move is 6
          for (int i = 0; i < history.size(); i++)// traverse the history and show it
            System.out.println(history.get(i));
          break;
        case 7:// if move is 7
          System.out.println("Bye!");// print "goodbye" message
          break;
        default:// if input a number out of range from 1~7, print exception information
          System.out.println("***Invalid input, please retry***");
          break;
      }
    }
  }
}
