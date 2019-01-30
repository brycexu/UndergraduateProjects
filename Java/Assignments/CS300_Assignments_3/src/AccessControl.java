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

import java.util.*;

public class AccessControl {
  private static ArrayList<User> users; // An ArrayList of valid users.

  private User currentUser; // Who is currently logged in, if anyone?

  private static final String DEFAULT_PASSWORD = "changeme"; // Default password given to
  // new users or when we reset a user's password.

  /**
   * The main method of the program Launch an AccessControl instance
   * 
   * @param args
   */
  public static void main(String[] args) {
    AccessControl ac = new AccessControl();
    // If we have any persistent information to lead
    // this is where we load it.
    Scanner userIn = new Scanner(System.in);
    ac.loginScreen(userIn);
  }

  /**
   * A no-parameter constructor of AccessControl
   */
  public AccessControl() {
    users = new ArrayList<User>(); // An ArrayList containing a single user with the username
                                   // “admin”, the password “root”, and isAdmin set to true.
    users.add(new User("admin", "root", true));
    currentUser = null; // set current user to null
  }

  /**
   * Report whether a given username/password pair is a valid login
   * 
   * @param username:the user's name
   * @param password:the user's password
   * @return whether or not the username/password pair is valid
   */
  public static boolean isValidLogin(String username, String password) {
    boolean matched = false; // to indicate whether the username/password pair is valid
    for (int i = 0; i < users.size(); i++) {
      // only in the case that the ArrayList has the username and it matches the password
      // can the user gets the access
      if (users.get(i).getUsername().equals(username) && users.get(i).isValidLogin(password)) {
        matched = true;
      }
    }
    return matched;
  }

  /**
   * Change the current user's password
   * 
   * @param newPassword:the new password
   */
  public void changePassword(String newPassword) {
    currentUser.setPassword(newPassword);
  }

  /**
   * Log out the current user
   */
  public void logout() {
    currentUser = null; // set the current user to null
  }

  /**
   * A mutator you can use to write tests without simulating user input
   * 
   * @param username:the user's name
   */
  public void setCurrentUser(String username) {
    for (int i = 0; i < users.size(); i++) { // tranverse to find the user with the username
      if (users.get(i).getUsername().equals(username)) {
        currentUser = users.get(i); // set the current user to the user found
      }
    }
  }

  /**
   * Create a new user with the default password and isAdmin==false
   * 
   * @param username:the user's name
   * @return whether or not it successfully added a user
   */
  public boolean addUser(String username) {
    if (currentUser != null) { // to check whether the current user is null
      if (currentUser.getIsAdmin()) { // to check whether the current user has the Admin powers
        for (int i = 0; i < users.size(); i++) { // to check if there is a duplicated-name problem
          if (users.get(i).getUsername().equals(username)) {
            System.out.println("Duplicated username!");
            return false;
          }
        }
        users.add(new User(username, DEFAULT_PASSWORD, false)); // otherwise, add a new user
                                                                // with a default password
        return true;
      }
    }
    return false;
  }

  /**
   * Create a new user and specify their admin status
   * 
   * @param username:the user's name
   * @param isAdmin:whether the user has the Admin powers
   * @return whether or not it successfully added a user
   */
  public boolean addUser(String username, boolean isAdmin) {
    if (currentUser != null) { // to check whether the current user is null
      if (currentUser.getIsAdmin()) { // to check whether the current user has the Admin powers
        for (int i = 0; i < users.size(); i++) { // to check if there is a duplicated-name problem
          if (users.get(i).getUsername().equals(username)) {
            System.out.println("Duplicated username!");
            return false;
          }
        }
        users.add(new User(username, DEFAULT_PASSWORD, isAdmin)); // otherwise, add a new user
                                                                  // with a default password
        return true;
      }
    }
    return false;
  }

  /**
   * Remove a user (names should be unique)
   * 
   * @param username:the user's name
   * @return whether or not it removed a user successfully
   */
  public boolean removeUser(String username) {
    if (currentUser != null) { // to check whether the current user is null
      if (currentUser.getIsAdmin()) { // to check whether the current user has the Admin powers
        for (int i = 0; i < users.size(); i++) { // to get the user with the username
          if (users.get(i).getUsername().equals(username)) {
            users.remove(i); // remove the user with the username
            return true;
          }
        }
      }
    }
    return false;
  }

  /**
   * Give a user admin powers
   * 
   * @param username:the user's name
   * @return whether or not it gave a user admin powers successfully
   */
  public boolean giveAdmin(String username) {
    if (currentUser != null) { // to check whether the current user is null
      if (currentUser.getIsAdmin()) { // to check whether the current user has the Admin powers
        for (int i = 0; i < users.size(); i++) { // to get the user with the username
          if (users.get(i).getUsername().equals(username)) {
            users.get(i).setIsAdmin(true); // give admin powers to the user with the username
            return true;
          }
        }
      }
    }
    return false;
  }

  /**
   * Remove a user's admin power
   * 
   * @param username
   * @return whether or not it removed admin powers from a user successfully
   */
  public boolean takeAdmin(String username) {
    if (currentUser != null) { // to check whether the current user is null
      if (currentUser.getIsAdmin()) { // to check whether the current user has the Admin powers
        for (int i = 0; i < users.size(); i++) { // to get the user with the username
          if (users.get(i).getUsername().equals(username)) {
            users.get(i).setIsAdmin(false); // remove admin powers from the user with the username
            return true;
          }
        }
      }
    }
    return false;
  }

  /**
   * Reset a user's password
   * 
   * @param username
   * @return whether or not it reset the user's password successfully
   */
  public boolean resetPassword(String username) {
    if (currentUser != null) { // to check whether the current user is null
      if (currentUser.getIsAdmin()) { // to check whether the current user has the Admin powers
        for (int i = 0; i < users.size(); i++) { // to get the user with the username
          if (users.get(i).getUsername().equals(username)) {
            users.get(i).setPassword(DEFAULT_PASSWORD); // reset the password of the user with
                                                        // the username
            return true;
          }
        }
      }
    }
    return false;
  }

  /**
   * Main driver loop
   * <p>
   * Prompt the user for login information Calls the isValidLogin method if the login is valid, call
   * the sessionScreen method
   * <p>
   * 
   * @param userInputScanner
   */
  public void loginScreen(Scanner userInputScanner) {
    while (true) {
      // Prompt the user for login information
      System.out.println("Welcome to CS 300 Access Control System!");
      System.out.println("Enter your name:");
      String userNameInput = userInputScanner.nextLine();
      System.out.println("Enter your password:");
      String userPasswordInput = userInputScanner.nextLine();
      // Check whether the username matches the password
      if (!isValidLogin(userNameInput, userPasswordInput)) {
        System.out.println("Your username and password are not matched!");
      }
      if (isValidLogin(userNameInput, userPasswordInput)) {
        System.out.println("Successfully logged in!");
        sessionScreen(userNameInput, userInputScanner); // If it does, go to the sessionScreen
      }
    }
  }

  /**
   * Set the currentUser Allows them to changePassword or logout if they are an admin, gives access
   * to admin methods
   * 
   * @param username
   * @param userInputScanner
   */
  public void sessionScreen(String username, Scanner userInputScanner) {
    setCurrentUser(username); // set the current user based on the username
    String command = ""; // command:the user's input
    while (!command.equals("logout")) { // only when the user inputs 'logout' does the loop ends
      System.out.println("Please enter the command:");
      command = userInputScanner.nextLine().trim(); // get the command
      // If the command is 'logout', sets the current user to null, ends the loop and goes back
      // to the login screen
      if (command.equals("logout")) {
        logout();
        System.out.println("Successfully logged out!");
      } else if (command.startsWith("newpw")) { // If the command starts with 'newpw',
                                                // changes the password (accessible to every user)
        String[] arrays = command.split(" +");
        String userPasswordInput = arrays[1];
        changePassword(userPasswordInput);
        System.out.println("Your password has been changed to " + userPasswordInput);
      } else if (command.startsWith("adduser")) { // If the command starts with 'adduser',
                                                  // adds a new user to the ArrayList users
        if (currentUser.getIsAdmin()) { // only accessible to admins
          String[] arrays = command.split(" +"); // arrays:store all the parts in the command
          String newUserName = arrays[1]; // [username]
          String booleanValue = null; // isAdmin
          if (arrays.length == 3) {
            booleanValue = arrays[2];
          }
          if (booleanValue == null) { // adduser [username]
            if (addUser(newUserName)) {
              System.out.println("Successfully added a user named:" + newUserName);
            } else {
              System.out.println("Failed to add a user named:" + newUserName);
            }
          } else if (booleanValue.equals("true")) { // adduser [username] true
            if (addUser(newUserName, true)) {
              System.out.println("Successfully added an admin named:" + newUserName);
            } else {
              System.out.println("Failed to add an admin named:" + newUserName);
            }
          } else if (booleanValue.equals("false")) { // adduser [username] false
            if (addUser(newUserName, false)) {
              System.out.println("Successfully added a user named:" + newUserName);
            } else {
              System.out.println("Failed to add a user named:" + newUserName);
            }
          } else {
            System.out.println("Please enter the correct command!");
          }
        } else {
          System.out.println("You do not have the authorization!");
        }
      } else if (command.startsWith("rmuser")) { // If the command starts with 'rmuser',
                                                 // removes a user
        if (currentUser.getIsAdmin()) { // only accessible to admins
          String[] arrays = command.split(" +");
          String userName = arrays[1];
          if (removeUser(userName)) {
            System.out.println("Successfully removed a user named:" + userName);
          } else {
            System.out.println("Failed to remove the user");
          }
        } else {
          System.out.println("You do not have the authorization!");
        }
      } else if (command.startsWith("giveadmin")) { // If the command starts with 'giveadmin',
                                                    // gives a user admin powers
        if (currentUser.getIsAdmin()) { // only accessible to admins
          String[] arrays = command.split(" +");
          String adminName = arrays[1];
          if (giveAdmin(adminName)) {
            System.out.println("Successfully gave admin to user:" + adminName);
          } else {
            System.out.println("Failed to give admin to the user");
          }
        } else {
          System.out.println("You do not have the authorization!");
        }
      } else if (command.startsWith("rmadmin")) { // If the command starts with 'rmadmin'
                                                  // removes admin powers from a user
        if (currentUser.getIsAdmin()) { // only accessible to admins
          String[] arrays = command.split(" +");
          String adminName = arrays[1];
          if (takeAdmin(adminName)) {
            System.out.println("Successfully took admin from user:" + adminName);
          } else {
            System.out.println("Failed to take admin from the user");
          }
        } else {
          System.out.println("You do not have the authorization!");
        }
      } else if (command.startsWith("resetpw")) { // If the command starts with 'resetpw'
                                                  // resets the password of a user
        if (currentUser.getIsAdmin()) { // only accessible to admins
          String[] arrays = command.split(" +");
          String userName = arrays[1];
          if (resetPassword(userName)) {
            System.out.println("Successfully reset the password of user:" + userName);
          } else {
            System.out.println("Failed to reset the password of the user");
          }
        } else {
          System.out.println("You do not have the authorization!");
        }
      } else { // If the user enters the incorrect command, then hinds will be shown on the screen
        System.out.println("Please enter the correct command:");
        System.out.println("logout");
        System.out.println("newpw [newpassword]");
        if (currentUser.getIsAdmin()) {
          System.out.println("adduser [username]");
          System.out.println("adduser [username] [true or false]");
          System.out.println("rmuser [username]");
          System.out.println("giveadmin [username]");
          System.out.println("rmadmin [username]");
          System.out.println("resetpw [username]");
        }
      }
    }
  }
}
