//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title:           Jungle Park 2000
// Files:           AddAnimalButton.java, Animal.java, Button.java, ClearButton.java, Deer.java,
//                  JunglePark.java, JungleParkTests.java, ParkGUI.java, Tiger.java
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
// This a super class for any Button that can be added to a PApplet application
// This class implements the ParkGUI interface
// TODO You MUST comment well this code
// TODO ADD File header, Javadoc class header, Javadoc method header to every method, and in-line
// commenting

/**
 * This class represents a button used in the program
 * It is the base class of AddAnimalButton and ClearButton
 * This class implements the ParkGUI interface
 * 
 * @author XuXianda
 */
public class Button implements ParkGUI {
  private static final int WIDTH = 85; // Width of the Button
  private static final int HEIGHT = 32; // Height of the Button
  protected JunglePark processing; // PApplet object where the button will be displayed
  private float[] position; // array storing x and y positions of the Button with respect to
                            // the display window
  protected String label; // text/label that represents the button

  /**
   * Constructor of this class
   * 
   * @param x:x location of the button
   * @param y:y location of the button
   * @param processing:object of JunglePark
   */
  public Button(float x, float y, JunglePark processing) {
    this.processing = processing;
    this.position = new float[2]; // array storing x and y positions of the button
    this.position[0] = x;
    this.position[1] = y;
    this.label = "Button"; // default label is "Button"
  }

  /**
   * Implements draw() in interface ParkGUI
   * Draws the button
   */
  @Override
  public void draw() {
    this.processing.stroke(0);// set line value to black
    if (isMouseOver())
      processing.fill(100); // set the fill color to dark gray if the mouse is over the button
    else
      processing.fill(200); // set the fill color to light gray otherwise

    // draw the button (rectangle with a centered text)
    processing.rect(position[0] - WIDTH / 2.0f, position[1] - HEIGHT / 2.0f,
        position[0] + WIDTH / 2.0f, position[1] + HEIGHT / 2.0f);
    processing.fill(0); // set the fill color to black
    processing.text(label, position[0], position[1]); // display the text of the current button
  }

  /**
   * Implements mousePressed() in interface ParkGUI
   * Called when the mouse is pressed
   */
  @Override
  public void mousePressed() {
    if (isMouseOver())
      System.out.println("A button was pressed.");
  }

  /**
   * Implements mouseReleased() in interface ParkGUI
   * Called when the mouse is released
   */
  @Override
  public void mouseReleased() {}

  /**
   * Implements isMouseOver() in interface ParkGUI
   * Decides whether the mouse is over a button
   */
  @Override
  public boolean isMouseOver() {
    if (this.processing.mouseX > this.position[0] - WIDTH / 2
        && this.processing.mouseX < this.position[0] + WIDTH / 2
        && this.processing.mouseY > this.position[1] - HEIGHT / 2
        && this.processing.mouseY < this.position[1] + HEIGHT / 2)
      return true;
    return false;
  }
}
