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

/**
 * This class extends the class Button and represents buttons that add animals to the Jungle Park
 * 
 * @author Bryce Xu
 */
public class AddAnimalButton extends Button {

  private String type; // type of the animal to add

  /**
   * constructor of this class
   * 
   * @param type:animal type to be added
   * @param x:x location of this button
   * @param y:y location of this button
   * @param park:the object of JunglePark
   */
  public AddAnimalButton(String type, float x, float y, JunglePark park) {
    super(x, y, park); // call the constructor of the super class
    this.type = type.toLowerCase();
    this.label = "Add " + type; // set the label
  }

  /**
   * Overriding the method mousePressed()
   * Called when the mouse pressed
   */
  @Override
  public void mousePressed() {
    if (isMouseOver()) {
      switch (type) {
        case "tiger":
          // TODO create a new Tiger and add it to the JunglePark
          Tiger t = new Tiger(processing);
          processing.listGUI.add(t);
          break;
        case "deer":
          // TODO create a new Deer and add it to the JunglePark
          Deer d = new Deer(processing);
          processing.listGUI.add(d);
          break;
      }
    }
  }
}
