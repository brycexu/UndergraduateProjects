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

public class User {
  private final String USERNAME; // The user's name

  private String password; // The user's password

  private boolean isAdmin; // Whether or not the user has Admin powers

  /**
   * Constructor: creates a new user with the given password and admin status
   * 
   * @param username: the user's name
   * @param password: the user's password
   * @param isAdmin: whether or not the user has Admin powers
   */
  public User(String username, String password, boolean isAdmin) {
    this.USERNAME = username; // Assign username to that of the object
    this.password = password; // Assign password to that of the object
    this.isAdmin = isAdmin; // Assign isAdmin to that of the object
  }

  /**
   * Report whether the password is correct
   * 
   * @param password: the user's password
   * @return whether or not the password is correct
   */
  public boolean isValidLogin(String password) {
    if (this.password.equals(password)) {
      return true;
    } else {
      return false;
    }
  }

  /**
   * Return the user's name
   * 
   * @return the user's name
   */
  public String getUsername() {
    return USERNAME;
  }

  /**
   * Report whether the user is an admin
   * 
   * @return whether or not the user is an admin
   */
  public boolean getIsAdmin() {
    return isAdmin;
  }

  /**
   * Set the new password
   * 
   * @param password:the user's password
   */
  public void setPassword(String password) {
    this.password = password;
  }

  /**
   * Set the new admin status
   * 
   * @param isAdmin:whether or not the user has Admin powers
   */
  public void setIsAdmin(boolean isAdmin) {
    this.isAdmin = isAdmin;
  }
}
