//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: Auditable Banking
// Files: AuditableBanking.java AuditableBankingTests.java
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

public class AuditableBanking {
  /**
   * The main method of the whole system
   * 
   * @param args
   */
  public static void main(String[] args) {
    final int ALLTRANSACTION_SIZE = 50; // The default size of the oversize array allTransactions
    // allTransactions:The oversize array of all transactions
    int[][] allTransactions = new int[ALLTRANSACTION_SIZE][];
    int allTransactionsCount = 0; // The number of transactions in allTransactions
    Scanner scnr = new Scanner(System.in); // The object of class Scanner, reading the user's inputs
    String input; // The user's inputs read by scnr
    System.out.println("========== Welcome to the Auditable Banking App ==========");
    // The do-while loop, exits only if allTransactionsCount becomes -1 (user types 'q')
    do {
      System.out.println("COMMAND MENU:");
      System.out.println("  Submit a Transaction (enter sequence of integers separated by spaces");
      System.out.println("  Show Current [B]alance");
      System.out.println("  Show Number of [O]verdrafts");
      System.out.println("  [Q]uit Program");
      System.out.print("ENTER COMMAND:");
      input = scnr.nextLine();
      allTransactionsCount = processCommand(input, allTransactions, allTransactionsCount);
    } while (allTransactionsCount != -1);
    System.out.println("============ Thank you for using this App!!!! ============");
  }

  /**
   * Adds a transaction group to an array of transaction groups. If the allTransactions array is
   * already full then this method will do nothing other than return allTransactionCount.
   * 
   * @param newTransactions is the new transaction group being added (perfect size).
   * @param allTransactions is the collection that newTransactions is being added to (oversize).
   * @param allTransactionsCount is the number of transaction groups within allTransactions (before
   *        newTransactions is added.
   * @return the number of transaction groups within allTransactions after newTransactions is added.
   */
  public static int submitTransactions(int[] newTransactions, int[][] allTransactions,
      int allTransactionsCount) {
    // If allTransactions is not full, adds a transaction into allTransactions and adds its count
    if (allTransactionsCount != allTransactions.length) {
      allTransactions[allTransactionsCount] = newTransactions;
      return allTransactionsCount + 1;
    }
    // If allTransactions is full, print the warning and return -1
    System.out.println("There is no space left for new transactions!");
    return -1;
  }

  /**
   * Processes the command the user enters B:show the balance o:Show the number of overdrafts q:quit
   * the system Three kinds of transactions 0:Binary Amount Transactions:1 represents deposits of
   * $1;0 represents withdraws of $1 1:Integer Amount Transactions:positive numbers are
   * deposits;negative numbers are withdraws 2:Quick Withdraw Transactions:indexes at 1,2,3,4
   * represent withdraws of $20,$40,$80,$100
   * 
   * @param command is the command the user enters
   * @param allTransactions is the collection that newTransactions is being added to (oversize).
   * @param allTransactionsCount is the number of transaction groups within allTransactions.
   * @return the number of transaction groups within allTransactions.
   */
  public static int processCommand(String command, int[][] allTransactions,
      int allTransactionsCount) {
    command = command.trim(); // Removes the heading and the tailing of the command
    // If the user types 'B', calculates and shows the balance
    if (command.charAt(0) == 'B') {
      System.out
          .println("Balance:" + calculateCurrentBalance(allTransactions, allTransactionsCount));
      return allTransactionsCount;
    }
    // If the user types 'o', calculates and shows the number of overdrafts
    else if (command.charAt(0) == 'o') {
      System.out.println("Number of Overdrafts:"
          + calculateNumberOfOverdrafts(allTransactions, allTransactionsCount));
      return allTransactionsCount;
    }
    // If the user types 'q', quits the system by returning the allTransactionscCount -1
    else if (command.charAt(0) == 'q') {
      allTransactionsCount = -1;
      return allTransactionsCount;
    }
    // If the user types 0 or 1 or 2, adds a new transaction into allTransactions(oversize)
    else if (command.charAt(0) == '0' || command.charAt(0) == '1' || command.charAt(0) == '2') {
      String[] string = command.split(" "); // splits the command and stores each char into an array
      // newTransactions:The transaction to be added into allTransactions
      int[] newTransactions = new int[string.length];
      for (int i = 0; i < string.length; i++) {
        // Transfers string[i] into the fomat of integer and puts them into newTransactions
        newTransactions[i] = Integer.parseInt(string[i]);
      }
      // Adds the new transaction into allTransactions
      allTransactionsCount =
          submitTransactions(newTransactions, allTransactions, allTransactionsCount);
      return allTransactionsCount;
    }
    return 0;
  }

  /**
   * Calculates the current balance according to the rule.
   * 
   * @param allTransactions is the collection that newTransactions is being added to (oversize).
   * @param allTransactionsCount is the number of transaction groups within allTransactions.
   * @return the balance calculated
   */
  public static int calculateCurrentBalance(int[][] allTransactions, int allTransactionsCount) {
    int balance = 0;
    for (int i = 0; i < allTransactionsCount; i++) {
      // 0:Binary Amount Transactions:1 represents deposits of $1;0 represents withdraws of $1
      if (allTransactions[i][0] == 0) {
        for (int j = 1; j < allTransactions[i].length; j++) {
          if (allTransactions[i][j] == 1) {
            balance++;
          } else {
            balance--;
          }
        }
      }
      // 1:Integer Amount Transactions:positive numbers are deposits;negative numbers are withdraws
      else if (allTransactions[i][0] == 1) {
        for (int j = 1; j < allTransactions[i].length; j++) {
          balance += allTransactions[i][j];
        }
      }
      // 2:Quick Withdraw Transactions:indexes at 1,2,3,4 represent withdraws of $20,$40,$80,$100
      else if (allTransactions[i][0] == 2) {
        for (int j = 1; j < allTransactions[i].length; j++) {
          if (j == 1) {
            balance -= 20 * allTransactions[i][j];
          } else if (j == 2) {
            balance -= 40 * allTransactions[i][j];
          } else if (j == 3) {
            balance -= 80 * allTransactions[i][j];
          } else if (j == 4) {
            balance -= 100 * allTransactions[i][j];
          }
        }
      }
    }
    return balance;
  }

  /**
   * Calculate the number overdrafts. An overdraft is when a withdraw is made that resuults in a
   * negative balance.
   * 
   * @param allTransactions is the collection that newTransactions is being added to (oversize).
   * @param allTransactionsCount is the number of transaction groups within allTransactions.
   * @return the number of overdrafts calculated
   */
  public static int calculateNumberOfOverdrafts(int[][] allTransactions, int allTransactionsCount) {
    int numberOfOverdrafts = 0; // number of the overdrafts
    int balance = 0; // the balance
    for (int i = 0; i < allTransactionsCount; i++) {
      // 0:Binary Amount Transactions:1 represents deposits of $1;0 represents withdraws of $1
      if (allTransactions[i][0] == 0) {
        for (int j = 1; j < allTransactions[i].length; j++) {
          if (allTransactions[i][j] == 1) {
            balance++;
          } else {
            balance--;
            if (balance < 0) { 
            // only when withdrawing and balance becoming minus does overdraft adds
              numberOfOverdrafts++;
            }
          }
        }
      }
      // 1:Integer Amount Transactions:positive numbers are deposits;negative numbers are withdraws
      else if (allTransactions[i][0] == 1) {
        for (int j = 1; j < allTransactions[i].length; j++) {
          balance += allTransactions[i][j];
          // only when withdrawing and balance becoming minus does overdraft adds
          if (allTransactions[i][j] < 0 && balance < 0) {
            numberOfOverdrafts++;
          }
        }
      }
      // 2:Quick Withdraw Transactions:indexes at 1,2,3,4 represent withdraws of $20,$40,$80,$100
      else if (allTransactions[i][0] == 2) {
        for (int j = 1; j < allTransactions[i].length; j++) {
          if (j == 1) {
            balance -= 20 * allTransactions[i][j];
          } else if (j == 2) {
            balance -= 40 * allTransactions[i][j];
          } else if (j == 3) {
            balance -= 80 * allTransactions[i][j];
          } else if (j == 4) {
            balance -= 100 * allTransactions[i][j];
          }
        }
        // only when withdrawing and balance becoming minus does overdraft adds
        if (balance < 0) {
          numberOfOverdrafts++;
        }
      }
    }
    return numberOfOverdrafts;
  }
}
