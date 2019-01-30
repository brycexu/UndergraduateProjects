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
    bool is_existed;
    is_existed = false;
    if(rows == cols)
    {
        for(int i=0; i < cols; i++)
        {
            if(*(*(board+i)+i) == 1 && (!is_existed))
            {
                is_existed = true;
            }
            else if(*(*(board+i)+i) == 1 && (is_existed))
            {
                return 1;
            }
        }
    }
    for(int i=0; i < rows; i++)
    {
        is_existed = false;
        for(int j=0; j < cols; j++)
        {
            for(int i=0; i < cols; i++)
            {
                if(*(*(board+i)+j) == 1 && (!is_existed))
                {
                    is_existed = true;
                }
                else if(*(*(board+i)+j) == 1 && (is_existed))
                {
                    return 1;
                }
            }
        }
    }
    for(int j=0; j < cols; j++)
    {
        is_existed = false;
        for(int i=0; i < rows; i++)
        {
            for(int i=0; i < cols; i++)
            {
                if(*(*(board+i)+j) == 1 && (!is_existed))
                {
                    is_existed = true;
                }
                else if(*(*(board+i)+j) == 1 && (is_existed))
                {
                    return 1;
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
	

	//Open the file and check if it opened successfully.
	FILE *fp = fopen(*(argv + 1), "r");
	if (fp == NULL)
    {
        printf("Usage: ./check_queens <input_filename>\n");
		exit(1);
	}


    //Declare local variables.
    int rows, cols;


    //TODO: Call get_dimensions to retrieve the board dimensions.
    get_dimensions(fp, &rows, &cols);
    

    //TODO: Dynamically allocate a 2D array of dimensions retrieved above.
    int **board;
    board = malloc(sizeof(int*)*rows);
    if(board == NULL)
    {
        printf("Error:Memory not allocated!");
        exit(1);
    }
    for(int i = 0; i < rows;i++)
    {
        board[i] = malloc(sizeof(int*)*cols);
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
            *(*(board+i)+j) = atoi(token);
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
    for(int i = 0; i < rows; i++)
    {
        free(board[i]);
        if(board[i] != NULL)
        {
            printf("Error:Memory not freed!");
            exit(1);
        }
    }
    free(board);
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
