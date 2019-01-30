////////////////////////////////////////////////////////////////////////////////
// Main File:        check_queens.c - main func:int main(int argc, char *argv[])
// This File:        check_queens.c
// Other Files:      none
// Semester:         CS 354 Fall 2018
//
// Author:           Xianda (Bryce) Xu
// Email:            xxu373@wisc.edu
// CS Login:         bxu
//
/////////////////////////// OTHER SOURCES OF HELP //////////////////////////////
//
//                   fully acknowledge and credit all sources of help,
//                   other than Instructors and TAs.
//
// Persons:          None
//
// Online sources:   None
//
////////////////////////////////////////////////////////////////////////////////

#include <stdio.h> 
#include <stdlib.h>  
#include <string.h>
#include <stdbool.h>

char *COMMA = ",";

/* COMPLETED:
 * Retrieves from the first line of the input file,
 * the number of rows and columns for the board.
 * 
 * fp: file pointer for input file
 * rows: pointer to number of rows
 * cols: pointer to number of columns
 */
void get_dimensions(FILE *fp, int *rows, int *cols)
{
	char *line = NULL; 
	size_t len = 0;
	if (getline(&line, &len, fp) == -1)
    {
		printf("Error in reading the file\n");
		exit(1); 
	}

	char *token = NULL; 
	token = strtok(line, COMMA);
	*rows = atoi(token); 

	token = strtok(NULL, COMMA); 
	*cols = atoi(token);
}

/* TODO:
 * Returns 1 if and only if there exists at least one pair
 * of queens that can attack each other.
 * Otherwise returns 0.
 * 
 * board: heap allocated 2D board
 * rows: number of rows
 * cols: number of columns
 */
int check_queens(int **board, int rows, int cols)
{
    int times; //Count the number of '1's in a row or in a column
    int left_up; //The side length of the maximum square on the left-up side
    int right_up; //The side length of the maximum square on the right-up side
    int left_down; //The side length of the maximum square on the left-down side
    int right_down; //The side length of the maximum square on the right-down side
    
    //Check rows
    //If there are more than 2 '1's on one row, then return 1
    for(int i = 0; i < rows; i++)
    {
        times = 0; //Count the number of '1's on each row
        for(int y = 0; y < cols; y++)
        {
            //When encounter a '1', plus times
            //Use address arithmetic to access the 2-D array
            if((*(*(board + i) + y)) == 1)
            {
                times++;
            }
        }
        if(times >= 2)
        {
            return 1;
        }
        //Check columns
        //If there are more than 2 '1's on one column, then return 1
        for(int j = 0; j < cols; j++)
        {
            times = 0;
            for(int x = 0; x < rows; x++)
            {
                //When encounter a '1', plus times
                //Use address arithmetic to access the 2-D array
                if((*(*(board + x) + j)) == 1)
                {
                    times++;
                }
            }
            if(times >= 2)
            {
                return 1;
            }
            //Check diagonals
            if((*(*(board + i) + j)) == 1)
            {
                //Decide the side length of the maximum square on the left-up side
                if(i < j)
                {
                    left_up = i;
                }
                else
                {
                    left_up = j;
                }
                //Then follow the diagonal of the square to check queens
                for(int x = 1; x <= left_up; x++)
                {
                    if((*(*(board + i - x) + j - x)) == 1)
                    {
                        return 1;
                    }
                }
                //Decide the side length of the maximum square on the right-up side
                if(i < cols - j - 1)
                {
                    right_up = i;
                }
                else
                {
                    right_up = cols - j - 1;
                }
                //Then follow the diagonal of the square to check queens
                for(int x = 1; x <= right_up; x++)
                {
                    if((*(*(board + i - x) + j + x)) == 1)
                    {
                        return 1;
                    }
                }
                //Decide the side length of the maximum square on the left-down side
                if(rows - i - 1 < j)
                {
                    left_down = rows - i - 1;
                }
                else
                {
                    left_down = j;
                }
                //Then follow the diagonal of the square to check queens
                for(int x = 1; x <= left_down; x++)
                {
                    if((*(*(board + i + x) + j - x)) == 1)
                    {
                        return 1;
                    }
                }
                //Decide the side length of the maximum square on the right-down side
                if(rows - i - 1 < cols - j - 1)
                {
                    right_down = rows - i - 1;
                }
                else
                {
                    right_down = cols - j - 1;
                }
                //Then follow the diagonal of the square to check queens
                for(int x = 1; x <= right_down; x++)
                {
                    if((*(*(board + i + x) + j + x)) == 1)
                    {
                        return 1;
                    }
                }
            }
        }
    }
	return 0;
}     


/* PARTIALLY COMPLETED:
 * This program prints true if the input file has any pair
 * of queens that can attack each other, and false otherwise
 * 
 * argc: CLA count
 * argv: CLA value 
 */
int main(int argc, char *argv[])
{

    //TODO: Check if number of command-line arguments is correct.
    //If the user invokes without an argument, or two or more argu-
    //ments, then an error message will be printed and exit(1) will
    //be called.
    
    if(*(argv + 1) == NULL || *(argv + 2) != NULL)
    {
        printf("Usage: ./check_queens <input_filename>\n");
        exit(1);
    }
	

	//Open the file and check if it opened successfully.
	FILE *fp = fopen(*(argv + 1), "r");
	if (fp == NULL)
    {
        printf("Cannot open file for reading\n");
		exit(1);
	}

    
    //Declare local variables.
    int rows, cols;


    //TODO: Call get_dimensions to retrieve the board dimensions.
    get_dimensions(fp, &rows, &cols);
    

    //TODO: Dynamically allocate a 2D array of dimensions retrieved above.
    //2-D array named 'board'
    int **board;
    //allocate of a 1-D array of integer pointers of size rows
    board = malloc(sizeof(int *) *rows);
    //if the return value is not correct, then an error message will be
    //printed and exit(1) will be called.
    if(board == NULL)
    {
        printf("Error:Memory not allocated!");
        exit(1);
    }
    for(int i = 0; i < rows;i++)
    {
        //for each row allocate a 1-D array of integers of size cols
        board[i] = malloc(sizeof(int *) *cols);
        //if the return value is not correct, then an error message will be
        //printed and exit(1) will be called.
        if(board[i] == NULL)
        {
            printf("Error:Memory not allocated!");
            exit(1);
        }
    }
	

	//Read the file line by line.
	//Tokenize each line wrt comma to store the values in your 2D array.
	char *line = NULL;
	size_t len = 0;
	char *token = NULL;
	for (int i = 0; i < rows; i++)
    {

		if (getline(&line, &len, fp) == -1)
        {
			printf("Error while reading the file\n");
			exit(1);	
		}

		token = strtok(line, COMMA);
		for (int j = 0; j < cols; j++)
        {
			//TODO: Complete the line of code below
                        //to initialize your 2D array.
			/* ADD ARRAY ACCESS CODE HERE */
            //*(*(board + i) + j) is a way called address arithmetic to
            //access board[i][j]
            *(*(board + i) + j) = atoi(token);
			token = strtok(NULL, COMMA);	
		}
	}

	//TODO: Call the function check_queens and print the appropriate
        //output depending on the function's return value.
    if(check_queens(board, rows, cols) == 1)
    {
        printf("true\n");
    }
    else
    {
        printf("false\n");
    }
    
        
	//TODO: Free all dynamically allocated memory.
    //free up all dynamically allocated memory by freeing it in the
    //reverse order of how it was allocated
    for(int i = 0; i < rows; i++)
    {
        free(board[i]);
        board[i] = NULL;
        //if it is not freed, an error message will be printed
        //and exit(1) will be called.
        if(board[i] != NULL)
        {
            printf("Error:Memory not freed!");
            exit(1);
        }
    }
    free(board);
    board = NULL;
    //if it is not freed, an error message will be printed
    //and exit(1) will be called.
    if(board != NULL)
    {
        printf("Error:Memory not freed!");
        exit(1);
    }
    
    

	//Close the file.
	if (fclose(fp) != 0)
    {
		printf("Error while closing the file\n");
		exit(1);	
	}

	return 0;
}    
