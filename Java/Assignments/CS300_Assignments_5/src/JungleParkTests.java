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

import java.util.ArrayList;

/**
 * This class tests methods in JunglePark.java
 * 
 * @author XuXianda
 */
public class JungleParkTests extends JunglePark {

  private static JunglePark park; // PApplet object that represents the display
  // window of this program

  /**
   * This method checks whether isClose() called by a Deer returns true if a tiger is within its
   * scanRange area and false if called with another tiger as input parameter located outside the
   * scanRange area
   *
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean test1isCloseMethod() {
    boolean passed = true;

    // Create a deer and two tigers
    Deer d = new Deer(park);
    Tiger t1 = new Tiger(park);
    Tiger t2 = new Tiger(park);
    // Set deer at position(200,200)
    d.setPositionX(200);
    d.setPositionY(200);
    // Set first tiger at position(400,200)
    t1.setPositionX(400); // tiger is 200px away from deer
    t1.setPositionY(200);
    // Set second tiger at position(300,200)
    t2.setPositionX(300); // tiger is 100px away from deer
    t2.setPositionY(200);
    if (d.isClose(t1, 175)) { // bug! isClose() should return false here
      System.out.println("Deer's isClose is returning true when it should return false.");
      passed = false;
    }
    if (!d.isClose(t2, 175)) { // bug! isClose() should return true here
      System.out.println("Deer's isClose is returning false when it should return true.");
      passed = false;
    }

    /////////////////////////////////////
    park.listGUI.clear(); // clear all the content of listGUI to get ready for a next scenario

    return passed;
  }

  /**
   * This method checks whether isClose() called by a Tiger returns false if another tiger is
   * located outside its scanRange area
   *
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean test2isCloseMethod() {
    boolean passed = true;

    // Create two tigers
    Tiger t1 = new Tiger(park);
    Tiger t2 = new Tiger(park);
    // Set the position for them
    t1.setPositionX(200);
    t1.setPositionY(200);
    t2.setPositionX(0);
    t2.setPositionY(0);
    if (t1.isClose(t2, 100)) { // bug ! isClose() should return false here
      System.out.println("Tiger's isClose is returning true when it should return false.");
      passed = false;
    }

    /////////////////////////////////////
    park.listGUI.clear(); // clear all the content of listGUI to get ready for a next scenario

    return passed;
  }

  /**
   * This method checks whether the deer detects a Tiger present at its proximity
   *
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean test1DeerScanForThreatMethod() {
    boolean passed = true;
    
    // Create a tiger and a deer here
    Deer d1 = new Deer(park);
    Tiger t1 = new Tiger(park);
    // Set the positions for them
    d1.setPositionX(100);
    d1.setPositionY(100);
    t1.setPositionX(150);
    t1.setPositionY(150);
    // Addd them to the arraylist
    park.listGUI.add(d1);
    park.listGUI.add(t1);
    if (!d1.scanForThreat(175)) { // bug ! scanForThreat() should be true here
      System.out.println("Deer's scanForThreat is returning false when it should return true.");
      passed = false;
    }

    /////////////////////////////////////
    park.listGUI.clear(); // clear all the content of listGUI to get ready for a next scenario

    return passed;
  }

  /**
   * This method checks whether your scanForThreat() method returns false if no Tiger is present
   * within a specific range distance from it
   *
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean test2DeerScanForThreatMethod() {
    boolean passed = true;
    
    // Create a tiger and a deer here
    Deer d1 = new Deer(park);
    Tiger t1 = new Tiger(park);
    // Set the locations for them
    d1.setPositionX(100);
    d1.setPositionY(100);
    t1.setPositionX(300);
    t1.setPositionY(100);
    // Add them to the arraylist
    park.listGUI.add(d1);
    park.listGUI.add(t1);
    if (d1.scanForThreat(175)) { // bug ! scanForThreat() should be false here
      System.out.println("Deer's scanForThreat is returning true when it should return false.");
      passed = false;
    }

    /////////////////////////////////////
    park.listGUI.clear(); // clear all the content of listGUI to get ready for a next scenario

    return passed;
  }

  /**
   * This method checks whether the tiger hops on the deer provided to the hop() method as input
   * argument. (1) The tiger should take the position of the deer. (2) The unfortunate deer should
   * be removed from the JunglePark listGUI. (3) The eatenDeerCount should be incremented.
   *
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean testTigerHopMethod() {
    boolean passed = true;
    
    // Create one deer and one tiger
    Deer d = new Deer(park);
    Tiger t = new Tiger(park);
    // Set the deer at position(250,250)
    d.setPositionX(250);
    d.setPositionY(250);
    // Set the tiger at position(300,300) tiger is 70.71px away from deer d1
    t.setPositionX(300);
    t.setPositionY(300);
    // add the tiger and the deer to the JunglePark (i.e. to listGUI)
    park.listGUI.add(d);
    park.listGUI.add(t);
    t.hop(d); // tiger hops on the deer
    if (t.getPositionX() != d.getPositionX() && t.getPositionY() != d.getPositionY()) {
      // tiger should move to the position of the deer
      System.out.println("Tiger did not move correctly when hopping.");
      passed = false;
    }
    if (park.listGUI.contains(d)) {
      // deer should be removed from the park
      System.out.println("Deer was not removed after being hopped on.");
      passed = false;
    }
    if (t.getDeerEatenCount() != 1) {
      // deerEatenCount should be incremented. It was 0
      System.out.println("deerEatenCount should be incremented after the tiger hopped on a deer.");
      passed = false;
    }

    /////////////////////////////////////
    park.listGUI.clear(); // clear all the content of listGUI to get ready for a next scenario

    return passed;
  }

  /**
   * runs JungleParkTests program as a PApplet client
   *
   * @param args
   */
  public static void main(String[] args) {
    // Call PApplet.main(String className) to start this program as a PApplet client application
    PApplet.main("JungleParkTests");
  }

  /**
   * This is a callback method automatically called only one time when the PApplet application
   * starts as a result of calling PApplet.main("PAppletClassName"); Defines the initial environment
   * properties of this class/program As setup() is run only one time when this program starts, all
   * your test methods should be called in this method
   */
  @Override
  public void setup() {
    super.setup(); // calls the setup() method defined
    park = this; // set the park to the current instance of Jungle

    // TODO Call your test methods here
    System.out.println("test1isCloseMethod(): " + test1isCloseMethod());
    System.out.println("test2isCloseMethod(): " + test2isCloseMethod());
    System.out.println("test1DeerScanForThreatMethod(): " + test1DeerScanForThreatMethod());
    System.out.println("test2DeerScanForThreatMethod(): " + test2DeerScanForThreatMethod());
    System.out.println("testTigerHopMethod(): " + testTigerHopMethod());


    // close PApplet display window (No need for the graphic mode for these tests)
    park.exit();

  }


}
