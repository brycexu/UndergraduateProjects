//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: Exceptional Banking
// Files: Account.java, TransactionGroup.java, ExceptionalBankingTests.java
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
import java.io.File;
import java.io.FileNotFoundException;
import java.util.zip.DataFormatException;

public class ExceptionalBankingTests {
  /**
   * A set of tests of exception handling.
   * <p>
   * print out "All tests passed" if all tests passed
   * <p>
   * 
   * @param args
   */
  public static void main(String[] args) {
    int fails = 0;
    if (!testAccountBalance()) {
      System.out.println("testAccountBalance failed!");
      fails++;
    }
    if (!testOverdraftCount()) {
      System.out.println("testOverdraftCount failed!");
      fails++;
    }
    if (!testTransactionGroupEmpty()) {
      System.out.println("testTransactionGroupEmpty failed!");
      fails++;
    }
    if (!testTransactionGroupInvalidEncoding()) {
      System.out.println("testTransactionGroupInvalidEncoding failed!");
      fails++;
    }
    if (!testAccountAddNegativeQuickWithdraw()) {
      System.out.println("testAccountAddNegativeQuickWithdraw failed!");
      fails++;
    }
    if (!testAccountBadTransactionGroup()) {
      System.out.println("testAccountBadTransactionGroup failed!");
      fails++;
    }
    if (!testAccountIndexOutOfBounds()) {
      System.out.println("testAccountIndexOutOfBounds failed!");
      fails++;
    }
    if (!testAccountMissingFile()) {
      System.out.println("testAccountMissingFile failed!");
      fails++;
    }
    if (fails == 0) {
      System.out.println("All tests passed!");
    }
  }
  /**
   * This method checks whether the balance is calculated as the way I think it does
   * 
   * @return true if it has the correct calculation output
   */
  public static boolean testAccountBalance() {
    Account user1 = new Account("User1");
    try {
      user1.addTransactionGroup("0 1 0 1 0 1 1 1 1 1");
      user1.addTransactionGroup("1 30");
      user1.addTransactionGroup("2 1 0 0 1");
      if (user1.getCurrentBalance() == -85) {
        return true;
      }
    } catch (DataFormatException e) {
      System.out.println(e.getMessage());
    }
    return false;
  }

  /**
   * This method checks whether the overdraft is calculated as the way I think it does
   * 
   * @return true if it has the correct calculation output
   */
  public static boolean testOverdraftCount() {
    Account user2 = new Account("User2");
    try {
      user2.addTransactionGroup("0 0 1 1 0 0 0 0");
      user2.addTransactionGroup("1 50");
      user2.addTransactionGroup("2 2 1 0 1");
      if (user2.getNumberOfOverdrafts() == 4) {
        return true;
      }
    } catch (DataFormatException e) {
      System.out.println(e.getMessage());
    }
    return false;
  }

  /**
   * This method checks whether the TransactionGroup constructor throws an exception with an
   * appropriate message, when it is passed an empty int[].
   * 
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean testTransactionGroupEmpty() {
    Account user3 = new Account("User3");
    try {
      user3.addTransactionGroup("");
    } catch (DataFormatException e) {
      System.out.println(e.getMessage());
      return true;
    }
    return false;
  }

  /**
   * This method checks whether the TransactionGroup constructor throws an exception with an
   * appropriate message, when then first int in the provided array is not 0, 1, or 2.
   * 
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean testTransactionGroupInvalidEncoding() {
    Account user4 = new Account("User4");
    try {
      user4.addTransactionGroup("3 0");
    } catch (DataFormatException e) {
      System.out.println(e.getMessage());
      return true;
    }
    return false;
  }

  /**
   * This method checks whether the Account.addTransactionGroup method throws an exception with an
   * appropriate message, when it is passed a quick withdraw encoded group that contains negative
   * numbers of withdraws.
   * 
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean testAccountAddNegativeQuickWithdraw() {
    Account user5 = new Account("User5");
    try {
      user5.addTransactionGroup("2 -1 0 0 1");
    } catch (DataFormatException e) {
      System.out.println(e.getMessage());
      return true;
    }
    return false;
  }

  /**
   * This method checks whether the Account.addTransactionGroup method throws an exception with an
   * appropriate message, when it is passed a string with space separated English words (non-int).
   * 
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean testAccountBadTransactionGroup() {
    Account user6 = new Account("User6");
    try {
      user6.addTransactionGroup("a s d f");
    } catch (DataFormatException e) {
      System.out.println(e.getMessage());
      return true;
    }
    return false;
  }

  /**
   * This method checks whether the Account.getTransactionAmount method throws an exception with an
   * appropriate message, when it is passed an index that is out of bounds.
   * 
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean testAccountIndexOutOfBounds() {
    Account user7 = new Account("User7");
    try {
      user7.addTransactionGroup("0 0 1 1 0");
      System.out.println(user7.getTransactionAmount(4));
    } catch (IndexOutOfBoundsException e) {
      System.out.println(e.getMessage());
      return true;
    } catch (DataFormatException e) {
      return false;
    }
    return false;
  }

  /**
   * This method checks whether the Account constructor that takes a File parameter throws an
   * exception with an appropriate message, when it is passed a File object that does not correspond
   * to an actual file within the file system.
   * 
   * @return true when test verifies correct functionality, and false otherwise.
   */
  public static boolean testAccountMissingFile() {
    File file = new File("/Users/XuXianda/Desktop/text123.txt");
    try {
      Account user8 = new Account(file);
    } catch (FileNotFoundException e) {
      System.out.println(e.getMessage());
      return true;
    }
    return false;
  }
}
