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
 * This class represents a Tiger in the JunglePark application
 *
 */
public class Tiger extends Animal {
  private static final int SCAN_RANGE = 100; // range dimension for scanning the neighborhood for
                                             // food
  private static final String IMAGE_FILE_NAME = "images/tiger.png";
  private static int nextID = 1; // class variable that represents the identifier of the next tiger
                                 // to be created
  // Tiger's identification fields
  private static final String TYPE = "TGR"; // A String that represents the tiger type
  private final int id; // Tiger's id: positive number that represents the order of the tiger

  private int deerEatenCount = 0;


  /**
   * Creates a new Tiger object positioned at a random position of the display window
   * 
   * @param processing PApplet object that represents the display window
   */
  public Tiger(JunglePark processing) {
    // Set Tiger drawing parameters
    super(processing, IMAGE_FILE_NAME);

    // Set Tiger identification fields
    id = nextID;
    this.label = TYPE + id; // String that identifies the current tiger
    nextID++;
  }

  /**
   * Displays the number of eaten deers if any on the top of the tiger image
   */
  public void displayDeerEatenCount() {
    this.processing.fill(0); // specify font color: black
    // display deerEatenCount on the top of the Tiger's image
    this.processing.text(deerEatenCount, this.getPositionX(),
        this.getPositionY() - this.image.height / 2 - 4);
  }

  /**
   * Getter of the deerEatenCount
   * 
   * @return the number of deers eaten
   */
  public int getDeerEatenCount() {
    return deerEatenCount;
  }

  /**
   * The tiger moves forward the position of food, and eats it
   * 
   * @param food: the deer to be eaten
   */
  public void hop(Deer food) {
    // set the position of the deer
    this.setPositionX(food.getPositionX());
    this.setPositionY(food.getPositionY());
    // if eaten, remove the deer from the arraylist
    processing.listGUI.remove(food);
    this.deerEatenCount++;
  }

  /**
   * Tiger's behavior in the Jungle Park Scans for food at the neighborhood of the current tiger. If
   * the Tiger founds any deer at its proximity, it hops on it, and eats it
   */
  @Override
  public void action() {
    // TODO
    // for each deer, check whether this tiger can hop it
    for (int i = 0; i < processing.listGUI.size(); i++) {
      if (processing.listGUI.get(i) instanceof Deer) {
        if (isClose((Animal) processing.listGUI.get(i), SCAN_RANGE)) { // check  
                                           // whether the deer is inside the range of this tiger
          mouseReleased();
          hop((Deer) processing.listGUI.get(i)); // if so, hop the deer
        }
      }
    }
    if (deerEatenCount > 0) {
      displayDeerEatenCount();
    }
  }
}
