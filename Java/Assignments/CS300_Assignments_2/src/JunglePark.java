//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title:           Jungle Park
// Files:           JunglePark.java
// Course:          CS300 FALL 2018
//
// Author:          Xianda (Bryce) Xu
// Email:           xxu373@wisc.edu
// Lecturer's Name: Mouna Kacem
//
///////////////////////////// CREDIT OUTSIDE HELP /////////////////////////////
//
// Persons:         None
// Online Sources:  None
//
/////////////////////////////// 80 COLUMNS WIDE ///////////////////////////////

import java.util.*;

public class JunglePark {
  private static PApplet processing; // PApplet object that represents the graphic 
                                     // interface of the JunglePark application
  private static PImage backgroundImage; // PImage object that represents the
                                         // background image
  private static Tiger[] tigers; // array storing the current tigers present
                                 // in the Jungle Park
  private static Random randGen; // Generator of random numbers

  /**
   * The main() method of the program
   * @param args
   */
  public static void main(String[] args) {
    Utility.startApplication(); // startApplication() method is from the provided Utility class
                                // It created the main window fro the application and then
                                // repeatedly updates its appearance and checks for user input
  }

  /**
   * Defines the initial environment properties of the application
   * @param processingObj represents a reference to the graphical interface of the application
   */
  public static void setup(PApplet processingObj) {
    processing = processingObj; // initialize the processing field to the one passed into
                                // the input argument parameter
    // set the color used for the background of the Processing window
    processing.background(245, 255, 250); // mint cream color
    // initialize and load the image of the background
    backgroundImage = processing.loadImage("images/background.png");
    // Draw the background image at the center of the screen
    // width [resp. height]: System variable of the processing library that stores the width
    // [resp. height] of the display window
    processing.image(backgroundImage, processing.width / 2, processing.height / 2);
    randGen = new Random(); // create a Random object and store its reference in randGen
    tigers = new Tiger[8]; // create a Tiger[] object and stores its reference in tigers
  }

  /**
   * Continuously draw the application display window and updates its content with respect to 
   * any change or any event that affects its appearance
   */
  public static void update() {
    // Repaint the background image every time update() is called to prevent it from looking like
    // multiple tigers
    processing.background(245, 255, 250); // mint cream color
    backgroundImage = processing.loadImage("images/background.png"); //Draw the background image
    // at the center of the screen
    processing.image(backgroundImage, processing.width / 2, processing.height / 2);
    // draw each tiger (not null reference) in a loop
    for (int i = 0; i < tigers.length; i++) {
      if (tigers[i] != null) {
        tigers[i].draw();
      }
    }
  }

  /**
   * Check if the mouse is over a tiger in order to drag a tiger or remove a tiger pointed
   * @param tiger: a reference to a Tiger object
   * @return flag: if the mouse is over a tiger, then return 'true', otherwise return 'false'
   */
  public static boolean isMouseOver(Tiger tiger) {
    boolean flag = false; // flag:a boolean value to check if the mouse is over a tiger
    // Check if the mouse is over a tiger,
    // That is, we can check if the location of mouse is in the area of a tiger
    if (tiger.getPositionX() - tiger.getImage().width / 2 < processing.mouseX
        && tiger.getPositionX() + tiger.getImage().width / 2 > processing.mouseX
        && tiger.getPositionY() - tiger.getImage().height / 2 < processing.mouseY
        && tiger.getPositionY() + tiger.getImage().height / 2 > processing.mouseY) {
      // It it is, return 'true'
      flag = true;
    }
    return flag;
  }

  /**
   * The Utility class will automatically call mouseDown() whenever the mouse botton is pressed down
   * Then, we can drag a tiger (at lowest index) by setting its position based on the position
   * of the mouse.
   */
  public static void mouseDown() {
    boolean flag = true; // To ensure that the tiger with lowest index is dragged if mouse 
                         // is over more than one tiger
    for (int i = 0; i < tigers.length; i++) {
      if (tigers[i] != null) { // To prevent NullPointer Exception
        if (flag && isMouseOver(tigers[i])) {
          tigers[i].setDragging(true); // set isDragging true in the tiger dragged
          tigers[i].setPositionX(processing.mouseX); // set the dragged tiger position X
          tigers[i].setPositionY(processing.mouseY); // set the dragged tiger position Y
          flag = false;
        }
      }
    }
  }

  /**
   * The Utility class will automatically call mouseUp() whenever the mouse botton is pressed up
   * Then, we set the boolean value isDragging in each tiger object false
   */
  public static void mouseUp() {
    for (int i = 0; i < tigers.length; i++) {
      if (tigers[i] != null) { // To prevent NullPointer Exception
        tigers[i].setDragging(false); // set the isDragging of each tiger object false
      }
    }
  }

  /**
   *  Each time the user presses any key, the keyPressed callback method will be excuted
   *  <p>
   *  When 't' or 'T' is pressed, search through the tigers array for a null reference, if 
   *  found, replace the first (lowest index) null reference with a new Tiger object located
   *  at a random position of the display window
   *  <p>
   *  When 'r' or 'R' is pressed while the mouse if over a tiger, that tiger will be removed
   *  from the Jungle Park until another is created in its place (by pressing the t-key)
   *  <p>
   */
  public static void keyPressed() {
    // When pressed 't' or 'T'
    if (processing.key == 't' || processing.key == 'T') {
      boolean flag = true; // To ensure that the tiger (null) with lowest index is created 
      for (int i = 0; i < tigers.length; i++) {
        if (tigers[i] == null && flag) { // To prevent NullPointer Exception
          // create a tiger at a random place
          tigers[i] = new Tiger(processing, (float) randGen.nextInt(processing.width),
              (float) randGen.nextInt(processing.height));
          // initialize the isDragging false
          tigers[i].setDragging(false);
          // when one tiget (null) is created, then exit
          flag = false;
        }
      }
    } else if (processing.key == 'r' || processing.key == 'R') { // When pressed 'r' or 'R'
      for (int i = 0; i < tigers.length; i++) { 
        if (tigers[i] != null) { // To prevent NullPointer Exception
          if (isMouseOver(tigers[i])) { // To check if mouse is over the tiger at index i
            tigers[i] = null; // remove the tiger at index i
          }
        }
      }
    }
  }
}
