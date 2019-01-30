//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: Access Control
// Files: User.java, AccessControl.java, AccessControlTest.java
// Course: CS300, FALL2018
//
// Author: Xianda (Bryce) Xu
// Email: xxu373@wisc.edu
// Lecturer's Name: Mouna Kacem
//
///////////////////////////// CREDIT OUTSIDE HELP /////////////////////////////
//
// Persons: None
// Online Sources: None
//
/////////////////////////////// 80 COLUMNS WIDE ///////////////////////////////
public class AccessControlTest {
  /**
   * Testing main. Runs each test and prints which (if any) failed
   * 
   * @param args
   */
  public static void main(String[] args) {
    int fails = 0;
    if (!testLogin1()) {
      System.out.println("testLogin failed");
      fails++;
    }
    if (!testAddUser1()) {
      System.out.println("testAddUser failed");
      fails++;
    }
    if (!testChangePassword3()) {
      System.out.println("testChangePassword failed");
      fails++;
    }
    if (!testRemoveUser4()) {
      System.out.println("testRemoveUser failed");
      fails++;
    }
    if (!testResetPassword5()) {
      System.out.println("testResetPassword failed");
      fails++;
    }
    if (!testGiveAdmin6()) {
      System.out.println("testGiveAdmin failed");
      fails++;
    }
    if (!testTakeAdmin7()) {
      System.out.println("testTakeAdmin failed");
      fails++;
    }
    if (fails == 0) {
      System.out.println("All tests passed!");
    }
  }

  /**
   * This test tries to log in a user that doesn't exist
   * 
   * @return boolean test passed
   */
  public static boolean testLogin1() {
    AccessControl ac = new AccessControl();
    String user = "probablyNotInTheSystem1234";
    String pw = "password";
    return !AccessControl.isValidLogin(user, pw);
  }

  /**
   * Create a new AccessControl and do not log in an admin Verify that addUser(String username)
   * returns false and that the new user is not added
   * 
   * @return boolean test passed
   */
  public static boolean testAddUser1() {
    AccessControl ac = new AccessControl();
    String user = "alexi";
    boolean addUserReport = ac.addUser(user);
    if (addUserReport) {
      return false;
    }
    return !AccessControl.isValidLogin(user, "changeme");
  }

  /**
   * This test tries to add a regular user and changes its password It should return true if it
   * works
   * 
   * @return boolean test passed
   */
  public static boolean testChangePassword3() {
    AccessControl ac = new AccessControl();
    ac.setCurrentUser("admin");
    ac.addUser("Jack");
    ac.setCurrentUser("Jack");
    ac.changePassword("newPassword");
    if (AccessControl.isValidLogin("Jack", "newPassword")) {
      ac.logout();
      return true;
    }
    ac.logout();
    return false;
  }

  /**
   * This test tries to remove a regular user It should return true if it removes a user that exists
   * 
   * @return boolean test passed
   */
  public static boolean testRemoveUser4() {
    AccessControl ac = new AccessControl();
    ac.setCurrentUser("admin");
    ac.addUser("Jack");
    if (ac.removeUser("Tom"))
      return false;
    ac.removeUser("Jack");
    if (!AccessControl.isValidLogin("Jack", "newPassword")) {
      return true;
    }
    return false;
  }

  /**
   * This test tries to reset the password of a regular user It should return true if it resets the
   * password of a user that exists
   * 
   * @return boolean test passed
   */
  public static boolean testResetPassword5() {
    AccessControl ac = new AccessControl();
    ac.setCurrentUser("admin");
    ac.addUser("Bryce", true);
    ac.setCurrentUser("Bryce");
    ac.changePassword("newPassword");
    ac.setCurrentUser("admin");
    if (ac.resetPassword("Tom"))
      return false;
    ac.resetPassword("Bryce");
    if (AccessControl.isValidLogin("Bryce", "changeme")) {
      return true;
    }
    return false;
  }

  /**
   * This test tries to give admin to a regular user It should return true if the new admin Bryce
   * can have the admin powers to add a user
   * 
   * @return boolean test passed
   */
  public static boolean testGiveAdmin6() {
    AccessControl ac = new AccessControl();
    ac.setCurrentUser("admin");
    ac.addUser("Bryce", false);
    ac.setCurrentUser("Bryce");
    if (ac.addUser("Tom"))
      return false;
    ac.setCurrentUser("admin");
    ac.giveAdmin("Bryce");
    if (ac.addUser("Tom"))
      return true;
    return false;
  }

  /**
   * This test tries to take admin from a previous admin It should return true if the previous admin
   * (without powers now) cannot add a user any more
   * 
   * @return boolean test passed
   */
  public static boolean testTakeAdmin7() {
    AccessControl ac = new AccessControl();
    ac.setCurrentUser("admin");
    ac.addUser("Bryce", true);
    ac.setCurrentUser("Bryce");
    if (!ac.addUser("Tom"))
      return false;
    ac.setCurrentUser("admin");
    ac.takeAdmin("Bryce");
    ac.setCurrentUser("Bryce");
    if (!ac.addUser("Tom"))
      return true;
    return false;
  }
}
