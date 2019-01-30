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
public class AuditableBankingTests {
  static int ALLTRANSACTION_SIZE = 50; // The default size of the oversize array allTransactions
  static int allTransactionsCount = 0; // The number of transactions in the allTransactions

  /**
   * 
   * Main method that
   * Tests the AuditableBanking, if the three tests, ProcessCommand, CalculateCurrentBalance,
   * CalculateNumberOfOverdrafts passed, the system passed.
   * 
   * @param args
   *
   */
  public static void main(String[] args) {
    if (testProcessCommand()) { // tests command processing
      if (testCalculateCurrentBalance()) { // tests balance calculating
        if (testCalculateNumberOfOverdrafts()) { // tests overdrafts calculating
          System.out.println("PASSED SYSTEM TEST!!!");
        }
      }
    }
  }

  /**
   * 
   * Tests the ProcessCommand
   * <p>
   * If correct, return true; otherwise, return false
   * <p>
   * 
   */
  public static boolean testProcessCommand() {
    // allTransactions:an oversize array which stores all the transactions
    int[][] allTransactions = new int[ALLTRANSACTION_SIZE][];
    // Binary Amount Transactions
    allTransactionsCount =
        AuditableBanking.processCommand("0 1 1 0 0 0 1 1", allTransactions, allTransactionsCount);
    // Integer Amount Transactions
    allTransactionsCount =
        AuditableBanking.processCommand("1 -10 +100", allTransactions, allTransactionsCount);
    // Quick Withdraw Transactions
    allTransactionsCount =
        AuditableBanking.processCommand("2 2 1 0 0", allTransactions, allTransactionsCount);

    // If the output is correct, then passes
    // Otherwise, fails
    if (allTransactions[0][2] == 1) {
      System.out.println("PASSED TEST 1/2 of TestProcessCommand!!!");
      if (allTransactions[2][1] == 2) {
        System.out.println("PASSED TEST 2/2 of TestProcessCommand!!!");
        return true;
      } else {
        System.out.println("FAILED TEST 2/2 of TestProcessCommand!!!");
        return false;
      }
    } else {
      System.out.println("FAILED TEST 1/2 of TestProcessCommand!!!");
      return false;
    }
  }

  /**
   * 
   * Tests the CalculateCurrentBalance
   * <p>
   * If correct, return true; otherwise, return false
   * <p>
   * 
   */
  public static boolean testCalculateCurrentBalance() {
    // reset the allTransactionsCount to 0
    allTransactionsCount = 0;
    // allTransactions:an oversize array which stores all the transactions
    int[][] allTransactions = new int[ALLTRANSACTION_SIZE][];
    // balance:+1
    allTransactionsCount =
        AuditableBanking.processCommand("0 1 1 0 0 0 1 1", allTransactions, allTransactionsCount);
    // balance:+99
    allTransactionsCount =
        AuditableBanking.processCommand("1 -10 +100", allTransactions, allTransactionsCount);
    // balance:+11
    allTransactionsCount =
        AuditableBanking.processCommand("2 2 1 0 0", allTransactions, allTransactionsCount);
    int balance = AuditableBanking.calculateCurrentBalance(allTransactions, allTransactionsCount);
    // If the output is correct, then passes
    // Otherwise, fails
    if (balance == 11) {
      System.out.println("PASSED TEST 1/1 of TestCalculateCurrentBalance!!!");
      return true;
    } else {
      System.out.println("FAILED TEST 1/1 of TestCalculateCurrentBalance!!!");
      return false;
    }
  }

  /**
   * 
   * Tests the CalculateNumberOfOverdrafts
   * <p>
   * If correct, return true; otherwise, return false
   * <p>
   * 
   */
  public static boolean testCalculateNumberOfOverdrafts() {
    boolean foundProblem = false;
    int[][] transactions = new int[][] {{1, 10, -20, +30, -20, -20}, // +2 overdrafts (ending
                                                                     // balance: -20)
        {0, 1, 1, 1, 0, 0, 1, 1, 1, 1}, // +2 overdrafts (ending balance: -15)
        {1, 115}, // +0 overdrafts (ending balance: +100)
        {2, 3, 1, 0, 1}, // +1 overdrafts (ending balance: -100)
    };

    // tests with a single transaction of the Integer Amount encoding
    int transactionCount = 1;
    // overdrafts: number of overdrafts
    int overdrafts = AuditableBanking.calculateNumberOfOverdrafts(transactions, transactionCount);
    if (overdrafts != 2) {
      System.out.println("FAILED TEST 1/2 of TestCalculateNumberOfOverdrafts!!!");
      foundProblem = true;
    } else
      System.out.println("PASSED TEST 1/2 of TestCalculateNumberOfOverdrafts!!!");

    // tests with four transactions: including one of each encoding
    transactionCount = 4;
    overdrafts = AuditableBanking.calculateNumberOfOverdrafts(transactions, transactionCount);
    if (overdrafts != 5) {
      System.out.println("FAILED TESTS 2/2 of TestCalculateNumberOfOverdrafts!!!");
      foundProblem = true;
    } else
      System.out.println("PASSED TESTS 2/2 of TestCalculateNumberOfOverdrafts!!!");

    return !foundProblem;
  }
}
