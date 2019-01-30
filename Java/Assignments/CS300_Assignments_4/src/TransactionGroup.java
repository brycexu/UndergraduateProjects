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
import java.util.zip.DataFormatException;
import java.lang.IndexOutOfBoundsException;

public class TransactionGroup {

  // 3 types of transactions
  private enum EncodingType {
    BINARY_AMOUNT, INTEGER_AMOUNT, QUICK_WITHDRAW
  };

  private EncodingType type;
  private int[] values; // values in each transaction

  /**
   * Constructor of TransactionGroup
   * 
   * @param groupEncoding
   * @throws DataFormatException
   */
  public TransactionGroup(int[] groupEncoding) throws DataFormatException {
    // if the transaction command is null or is empty, a DataFormatException will be thrown
    if (groupEncoding == null || groupEncoding.length == 0 || groupEncoding.length == 1) {
      throw new DataFormatException("transaction group encoding cannot be null or empty");
    }
    // if the first element is not among 0,1,2, a DataFormatException will be thrown
    if (groupEncoding[0] != 0 && groupEncoding[0] != 1 && groupEncoding[0] != 2) {
      throw new DataFormatException(
          "the first element within a transaction group must be 0, 1, or 2");
    }
    if (groupEncoding != null) {
      this.type = EncodingType.values()[groupEncoding[0]];
      this.values = new int[groupEncoding.length - 1];
      for (int i = 0; i < values.length; i++) {
        this.values[i] = groupEncoding[i + 1];
        if (groupEncoding[0] == 0) {
          if (values[i] != 0 && values[i] != 1) { // if the element is not among 0,1 when doing 
                                                  // Binary_Amount, a DataFormatException will be
                                                  // thrown
            throw new DataFormatException(
                "binary amount transaction groups may only contain 0s and 1s");
          }
        }
        if (groupEncoding[0] == 1) {
          if (values[i] == 0) { // if the element is 0 when doing Integer_Amount, a DataFormatExce-
                                // -ption will be thrown
            throw new DataFormatException("integer amount transaction groups may not contain 0s");
          }
        }
        if (groupEncoding[0] == 2) {
          if (groupEncoding.length != 5) {
            throw new DataFormatException( // if the number of elements is not 5 when doing Quick_
                                           // Withdraw, a DataFormatException will be thrown
                "quick withdraw transaction groups must contain 5 elements");
          }
          if (values[i] < 0) { // if the element is negative when doing Quick_Withdraw, a DataFor-
                               // -matException will be thrown
            throw new DataFormatException(
                "quick withdraw transaction groups may not contain negative numbers");
          }
        }
      }
    }
  }

  /**
   * Getter of transactionCount
   * 
   * @return the number of transactions 
   */
  public int getTransactionCount() {
    int transactionCount = 0;
    switch (this.type) {
      case BINARY_AMOUNT:
        int lastAmount = -1;
        for (int i = 0; i < this.values.length; i++) {
          if (this.values[i] != lastAmount) {
            transactionCount++;
            lastAmount = this.values[i];
          }
        }
        break;
      case INTEGER_AMOUNT:
        transactionCount = values.length;
        break;
      case QUICK_WITHDRAW:
        for (int i = 0; i < this.values.length; i++)
          transactionCount += this.values[i];
    }
    return transactionCount;
  }

  /**
   * Getter of transactionAmount
   * 
   * @param transactionIndex:the transaction that the user wants
   * @return the amount of a specific transaction
   * @throws IndexOutOfBoundsException:if the index exceeds the bound of transactiongroup
   */
  public int getTransactionAmount(int transactionIndex) throws IndexOutOfBoundsException {
    // if the index is smaller than 0 or it exceeds the number of transactions,
    // an IndexOutOfBoundsException will be thrown
    if (transactionIndex < 0 || transactionIndex > this.getTransactionCount()) {
      throw new IndexOutOfBoundsException(
          "Invalid transactionIndex! There are only " + this.getTransactionCount()
              + " transactions, but the index is " + transactionIndex + "!");
    }
    int transactionCount = 0;
    switch (this.type) {
      case BINARY_AMOUNT:
        int lastAmount = -1;
        int amountCount = 0;
        for (int i = 0; i <= this.values.length; i++) {
          if (i == this.values.length || this.values[i] != lastAmount) {
            if (transactionCount - 1 == transactionIndex) {
              if (lastAmount == 0)
                return -1 * amountCount;
              else
                return +1 * amountCount;
            }
            transactionCount++;
            lastAmount = this.values[i];
            amountCount = 1;
          } else
            amountCount++;
          lastAmount = this.values[i];
        }
        break;
      case INTEGER_AMOUNT:
        return this.values[transactionIndex];
      case QUICK_WITHDRAW:
        final int[] QW_AMOUNTS = new int[] {-20, -40, -80, -100};
        for (int i = 0; i < this.values.length; i++)
          for (int j = 0; j < this.values[i]; j++)
            if (transactionCount == transactionIndex)
              return QW_AMOUNTS[i];
            else
              transactionCount++;
    }
    return -1;
  }
}
