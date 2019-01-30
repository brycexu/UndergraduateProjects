//////////////////// ALL ASSIGNMENTS INCLUDE THIS SECTION /////////////////////
//
// Title: P10 SJF Process Scheduler
// Files: CustomProcess.java, CustomProcessQueue.java, ProcessScheduler.java,
// ProcessScheduler.java and WaitingQueueADT.java
// Course: CS300 Fall 2018
//
// Author: Xianda Xu
// Email: xxu373@wisc.edu
// Lecturer's Name: Mouna Kacem
//
//////////////////// PAIR PROGRAMMERS COMPLETE THIS SECTION ///////////////////
//
// Partner Name: Jingcheng Wu
// Partner Email: jwu446@wisc.edu
// Partner Lecturer's Name: Mouna Kacem
//
// VERIFY THE FOLLOWING BY PLACING AN X NEXT TO EACH TRUE STATEMENT:
// _X_ Write-up states that pair programming is allowed for this assignment.
// _X_ We have both read and understand the course Pair Programming Policy.
// _X_ We have registered our team prior to the team registration deadline.
//
///////////////////////////// CREDIT OUTSIDE HELP /////////////////////////////
//
// Students who get help from sources other than their partner must fully
// acknowledge and credit those sources of help here. Instructors and TAs do
// not need to be credited here, but tutors, friends, relatives, room mates,
// strangers, and others do. If you received no outside help from either type
// of source, then please explicitly indicate NONE.
//
// Persons: None
// Online Sources: None
//
/////////////////////////////// 80 COLUMNS WIDE ///////////////////////////////

/**
 * This class implements your WaitingQueueADT interface of CustomProcesses
 */
public class CustomProcessQueue implements WaitingQueueADT<CustomProcess> {

  // the initial capacity of the heap
  private static final int INITIAL_CAPACITY = 20;
  // array-based min heap storing the data. This is an oversize array
  private CustomProcess[] heap;
  // number of CustomProcesses present in this CustomProcessQueue
  private int size;

  /**
   * Constructor of the class CustomProcessQueue
   */
  public CustomProcessQueue() {
    heap = new CustomProcess[INITIAL_CAPACITY]; // initialize the heap
    size = 0; // initialize size to 0
  }

  /**
   * Insert a newObject in the priority queue
   * 
   * @param newObject:an element to be added
   */
  @Override
  public void enqueue(CustomProcess newObject) {
    size++;
    heap[size] = newObject; // insert newObject at the index size(new)
    minHeapPercolateUp(size); // bubble up the newObject
  }

  /**
   * Remove and Return the item with the highest priority
   * 
   * @return the element at front
   */
  @Override
  public CustomProcess dequeue() {
    if (isEmpty()) // if the heap is empty, return null
      return null;
    CustomProcess removeNode = heap[1];
    heap[1] = heap[size]; // move the object at back to the front
    heap[size] = null;
    size--; // decrease the size
    minHeapPercolateDown(1); // bubble down the new front node
    return removeNode;
  }

  /**
   * Return without removing the item with the highest priority
   * 
   * @return the element at front
   */
  @Override
  public CustomProcess peek() {
    if (isEmpty()) // if the heap is empty, return null
      return null;
    return heap[1]; // return the node at the front
  }

  /**
   * Return size of the waiting queue
   * 
   * @return the size of the waiting queue
   */
  @Override
  public int size() {
    return size;
  }

  /**
   * Check if the waiting queue is empty
   * 
   * @return true if the waiting queue is empty
   */
  @Override
  public boolean isEmpty() {
    return heap[1] == null;
  }

  /**
   * Bubble up the element at the given index in the heap
   * 
   * @param index:the given index
   */
  private void minHeapPercolateUp(int index) {
    while (index > 1) {
      int parentIndex = index / 2; // the index of parent is index / 2
      if (heap[index].compareTo(heap[parentIndex]) > 0)
        break;
      swap(index, parentIndex); // if the current is smaller than its parent, swap
      index = parentIndex;
    }
  }

  /**
   * Bubble down the element at the given index in the heap
   * 
   * @param index:the given index
   */
  private void minHeapPercolateDown(int index) {
    while (hasLeftChild(index)) {
      int leftIndex = getLeftChildIndex(index);
      int smallIndex = leftIndex;
      if (hasRightChild(index)) {
        int rightIndex = getRightChildIndex(index);
        if (heap[leftIndex].compareTo(heap[rightIndex]) > 0) {
          smallIndex = rightIndex;
        }
      }
      if (heap[smallIndex].compareTo(heap[index]) > 0)
        break;
      swap(index, smallIndex);
      index = smallIndex;
    }
  }

  /**
   * Exchange the entries of nodes at indices i and j of the heap
   * 
   * @param i:index of the first node to exchange context with
   * @param j:index of the second node to exchange context with
   */
  private void swap(int i, int j) {
    CustomProcess temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  /**
   * Return the index of the left child of the node of index j in the heap
   * 
   * @param j:index of a node
   * @return index of the left child of j
   */
  private int getLeftChildIndex(int j) {
    return 2 * j;
  }

  /**
   * Return the index of the right child of the node of index j in the heap
   * 
   * @param j:index of a node
   * @return index of the right child of j
   */
  private int getRightChildIndex(int j) {
    return 2 * j + 1;
  }

  /**
   * Check whether the node of index j has a left child
   * 
   * @param j:index of a node
   * @return index of the left child of j
   */
  private boolean hasLeftChild(int j) {
    return getLeftChildIndex(j) < size + 1;
  }

  /**
   * Check whether the node of index j has a right child
   * 
   * @param j:index of a node
   * @return index of the right child of j
   */
  private boolean hasRightChild(int j) {
    return getRightChildIndex(j) < size + 1;
  }

  /*
   * Return a string that contains the heap information
   * 
   * @return a string containing the heap information
   */
  @Override
  public String toString() {
    String s = "";
    for (int i = 1; i <= size; i++) {
      s += heap[i].getBurstTime() + " ";
    }
    return s;
  }

}
