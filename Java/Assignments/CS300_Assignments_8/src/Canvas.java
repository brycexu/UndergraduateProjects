//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: Canvas.java
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

/**
 * It's a canvas where you can operate your art
 * 
 * @author Xianda(Bryce) Xu, Jingcheng Wu
 *
 */
public class Canvas {

  private final int width; // width of the canvas
  private final int height; // height of the canvas

  private char[][] drawingArray; // 2D character array to store the drawing

  private final DrawingStack undoStack; // store previous changes for undo
  private final DrawingStack redoStack; // store undone changes for redo

  /**
   * Create a new Canvas with given width and height
   * 
   * @param width represents the width of the canvas
   * @param height represents the height of the canvas
   */
  public Canvas(int width, int height) {

    // handle illegal inputs
    if (width <= 0 || height <= 0)
      throw new IllegalArgumentException("Illegal input!");

    // assign partial fields with given params
    this.width = width;
    this.height = height;

    // create a new 2-D array with given x,y
    drawingArray = new char[height][width];
    for (int i = 0; i < height; i++) {
      for (int j = 0; j < width; j++) {
        drawingArray[i][j] = ' ';
      }
    }

    // assign partial fields with given params
    undoStack = new DrawingStack();
    redoStack = new DrawingStack();
  }

  /**
   * Draw a char at the given position
   * 
   * @param row represents the x position of the char
   * @param col represents the y position of the char
   * @param c represents the char
   */
  public void draw(int row, int col, char c) {

    // Handle illegal inputs
    if ((row < 0 || row > height) || (col < 0 || col > width)) {
      throw new IllegalArgumentException("WARNING: the position is out of canvas!");
    }

    char old = drawingArray[row][col];// old represents the previous char @(x,y)
    DrawingChange drawingChange = new DrawingChange(row, col, old, c);// create a new change
    undoStack.push(drawingChange);// add the change in the undoStack so we can undo
    if (!redoStack.isEmpty())
      redoStack.pop();
    drawingArray[row][col] = c;
  }

  /**
   * Undo the most recent drawing change.
   * 
   * @return true if successful, false otherwise.
   */
  public boolean undo() {
    DrawingChange recentDrawingChange = undoStack.pop();// get the most recent change
    draw(recentDrawingChange.x, recentDrawingChange.y, recentDrawingChange.prevChar);// undo the
                                                                                     // change
    redoStack.push(recentDrawingChange);// add the undone change to the redoStack so we can redo it
    return true;
  }

  /**
   * Redo the most recent undone change
   * 
   * @return true if successful, false otherwise
   */
  public boolean redo() {
    DrawingChange recentUndoneDrawingChange = redoStack.pop();// get the most recent undone change
    draw(recentUndoneDrawingChange.x, recentUndoneDrawingChange.y,
        recentUndoneDrawingChange.newChar);// redo the change
    undoStack.push(recentUndoneDrawingChange);// add the change to the undoStack so we can undo it
    return true;
  }

  /**
   * Get the canvas in string
   * 
   * @return the canvas in string
   */
  public String toString() {
    String stringCanvas = "";// initialize the output string

    // traverse the whole drawingArray field to develop the string
    for (int i = 0; i < width; i++) {
      for (int j = 0; j < height; j++) {
        stringCanvas += drawingArray[i][j];// append char one by one to the string
      }

      // insert lines between rows
      stringCanvas += System.lineSeparator();

    }
    return stringCanvas;
  }

  /**
   * Print the canvas
   */
  public void printDrawing() {
    System.out.print(this.toString());
  }

}
