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
import java.io.*;
import java.lang.IndexOutOfBoundsException;
import java.lang.OutOfMemoryError;
import java.util.Scanner;
import java.util.zip.DataFormatException;

public class Account {

  private static final int MAX_GROUPS = 10000; // the maximum number of transactions
  private static int nextUniqueId = 1000; // for the initialization of UNIQUE_ID

  private String name; // user's name
  private final int UNIQUE_ID; // user's ID (constant)
  private TransactionGroup[] transactionGroups; // array that stores transactions
  private int transactionGroupsCount; // number of transactions

  /**
   * Constructor of Account with String 'name'
   * 
   * @param name:user's name
   */
  public Account(String name) {
    this.name = name;
    this.UNIQUE_ID = Account.nextUniqueId;
    Account.nextUniqueId++;
    this.transactionGroups = new TransactionGroup[MAX_GROUPS];
    this.transactionGroupsCount = 0;
  }

  /**
   * Constructor of Acount with File 'file'
   * 
   * @param file:file input
   * @throws FileNotFoundException:no matched file found in the path
   */
  public Account(File file) throws FileNotFoundException {
    Scanner in = null;
    try {
      in = new Scanner(file); // if file does not exit, an exception called FileNotFoundException
                              // will be thrown
      this.name = in.nextLine();
      this.UNIQUE_ID = Integer.parseInt(in.nextLine());
      Account.nextUniqueId = this.UNIQUE_ID + 1;
      this.transactionGroups = new TransactionGroup[MAX_GROUPS];
      this.transactionGroupsCount = 0;
      String nextLine = "";
      while (in.hasNextLine()) // read the file using a loop
        try { // if a DataFormatException is thrown in adding a transaction, it will be catched here
          this.addTransactionGroup(in.nextLine());
        } catch (DataFormatException e) {
          System.out.println(e.getMessage()); // print out the exception message
        }
      in.close(); // close the file
    } finally { // it is always a good habit to close a file
      if (in != null) {
        in.close();
      }
    }
  }

  /**
   * Getter of UNIQUE_ID
   * 
   * @return
   */
  public int getId() {
    return this.UNIQUE_ID;
  }

  /**
   * To add transaction to the TransactionGroup
   * 
   * @param command:transaction command
   * @throws DataFormatException:if the command contains strings or other types except integer
   * @throws OutOfMemoryError:if the number of commands exceed MAX_Group
   */
  public void addTransactionGroup(String command) throws DataFormatException, OutOfMemoryError {
    TransactionGroup t = null;
    if (command.length() != 0) { // if the command is "", then an exception about being empty 
                                 // will be thrown
      String[] parts = command.split(" ");
      int[] newTransactions = new int[parts.length];
      for (int i = 0; i < parts.length; i++) {
        try {
          newTransactions[i] = Integer.parseInt(parts[i]);
        } catch (NumberFormatException e) { // if other types like string are mixed into the command
                                            // a DataFormatException needs to be thrown
          throw new DataFormatException(
              "addTransactionGroup requires string commands that contain only space separated "
              + "integer values");
        }
      }
      t = new TransactionGroup(newTransactions);
    } else {
      t = new TransactionGroup(null);
    }
    if (transactionGroupsCount > MAX_GROUPS) { // if the number of transaction exceeds MAX_GROUPS,
                                               // a OutOfMemoryError exception will be thrown
      throw new OutOfMemoryError("Out of Memory Capacity:" + MAX_GROUPS + "!");
    } 
    this.transactionGroups[this.transactionGroupsCount] = t;
    this.transactionGroupsCount++;
  }

  /**
   * Getter of transactionCount
   * 
   * @return
   */
  public int getTransactionCount() {
    int transactionCount = 0;
    for (int i = 0; i < this.transactionGroupsCount; i++)
      transactionCount += this.transactionGroups[i].getTransactionCount();
    return transactionCount;
  }

  /**
   * Getter of transactionAmount
   * 
   * @param index:the transaction that the user wants
   * @return
   * @throws IndexOutOfBoundsException:if the index exceeds the bound of the transactiongroup
   */
  public int getTransactionAmount(int index) throws IndexOutOfBoundsException {
    if (index < 0 || index > this.getTransactionCount()) { // if the index exceeds the number of
                                                      // transactions, an IndexOutOfBoundsException
                                                      // will be thrown
      throw new IndexOutOfBoundsException("Invalid transactionIndex! There are only "
          + this.getTransactionCount() + " transactions, but the index is " + index + "!");
    }
    int transactionCount = 0;
    for (int i = 0; i < this.transactionGroupsCount; i++) {
      int prevTransactionCount = transactionCount;
      transactionCount += this.transactionGroups[i].getTransactionCount();
      if (transactionCount > index) {
        index -= prevTransactionCount;
        return this.transactionGroups[i].getTransactionAmount(index);
      }
    }
    return -1;
  }

  /**
   * Getter of currentBalance
   * 
   * @return the number of current balance
   */
  public int getCurrentBalance() {
    int balance = 0;
    int size = this.getTransactionCount();
    for (int i = 0; i < size; i++)
      balance += this.getTransactionAmount(i);
    return balance;
  }

  /**
   * Getter of numberOfOverdrafts
   * 
   * @return the number of overdrafts
   */
  public int getNumberOfOverdrafts() {
    int balance = 0;
    int overdraftCount = 0;
    int size = this.getTransactionCount();
    for (int i = 0; i < size; i++) {
      int amount = this.getTransactionAmount(i);
      balance += amount;
      if (balance < 0 && amount < 0)
        overdraftCount++;
    }
    return overdraftCount;
  }

}
