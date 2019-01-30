////////////////////////////////////////////////////////////////////////////////
// Main File:        traverse_spiral.c
// This File:        traverse_spiral.c
// Other Files:      none
// Semester:         CS 354 Fall 2018
//
// Author:           Xianda (Bryce) Xu
// Email:            xxu373@wisc.edu
// CS Login:         bxu
//
/////////////////////////// OTHER SOURCES OF HELP //////////////////////////////
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

char *COMMA = ","; 

// Structure representing Matrix
// size: Dimension of the square (size*size)
// array: 2D array of integers
typedef struct _Square
{
    int size;
    int **array;
} Square;

/* TODO:
 * Retrieves from the first line of the input file,
 * the size of the square matrix.
 * 
 * fp: file pointer for input file
 * size: pointer to size of the square matrix
 */
void get_dimensions(FILE *fp, int *size)
{
    char *line = NULL;
    size_t len = 0;
    if(getline(&line, &len, fp) == -1)
    {
        printf("Error in reading the file\n");
        exit(1);
    }
    
    char *token = NULL;
    token = strtok(line, COMMA);
    *size = atoi(token);
}

/* PARTIALLY COMPLETED:
 * Traverses a given layer from the square matrix
 * 
 * array: Heap allocated 2D square matrix
 * rows: pointer to size of square
 * layer: layer number to be traversed
 * op: pointer to the output file
 */
void traverse_layer(int **array, int size, int layer, FILE *op)
{
	int row_num, col_num;
	int i,j;
	
	//corner case: size is odd & the layer is last so only one entry to print
    if(size % 2 == 1 && layer == (size + 1) / 2 - 1)
    {
        fprintf(op, "%d ", *(*(array + layer) + layer));
        return;
    }

	//Traverse upper row from left to right with appropriate bounds
	row_num = layer;
    for(j = 0; j < size - 2 * layer - 1; j++)
    {
        fprintf(op, "%d ", *(*(array + row_num) + row_num + j));
	}

	//Traverse right column from top to bottom with appropriate bounds
	col_num = size - layer - 1;
    for(i = 0; i < size - 2 * layer - 1; i++)
    {
        fprintf(op, "%d ", *(*(array + row_num + i) + col_num));
	}

	//Traverse lower row from right to left with appropriate bounds
	row_num = size - layer - 1;
    for(j = 0; j < size - 2 * layer - 1; j++)
    {
        fprintf(op, "%d ", *(*(array + row_num) + row_num - j));
	}

	//Traverse left column from bottom to top with appropriate bounds
	col_num = layer;
    for(i = 0; i < size - 2 * layer - 1; i++)
    {
        fprintf(op, "%d ", *(*(array + row_num - i) + col_num));
	}
}


/* COMPLETED:
 * Traverses the square matrix spirally
 * 
 * square: pointer to a structure that contains 2D square matrix
 * op: pointer to the output file
 */
void traverse_spirally(Square *square, FILE *op)
{
	int size = square->size; 
	int num_layers = 0;   
	num_layers = size/2; 
	if(size%2 == 1)
    {
		num_layers++;
	}
	 
	int i;
	for(i = 0; i < num_layers; i++)
    {
		traverse_layer(square->array, size, i, op);
	}
}

/* PARTIALLY COMPLETED:
 * This program reads a square matrix from the input file
 * and outputs its spiral order traversal to the output file
 *
 * argc: CLA count
 * argv: CLA value
 */
int main(int argc, char *argv[]) {                  

	//Check if number of arguments is correct
//    if(*(argv + 1) == NULL || *(argv + 2) == NULL || *(argv + 3) != NULL)
//    {
//        printf("Usage: ./traverse_spiral <input_filename> <output_filename>\n");
//        exit(1);
//    }
	
	//Open the file and check if it opened successfully
    //FILE *ifp = fopen(*(argv + 1), "r");
    FILE *ifp = fopen("/Users/XuXianda/Desktop/CS354/Assignment_2_2/Assignment2_2/traverse2.txt", "r");
    if(ifp == NULL)
    {
        printf("Cannot open file for reading\n");
        exit(1);
    }

	//Call the function get_dimensions to retrieve size of the square matrix
    int size; // size:the side length of the square matrix
    get_dimensions(ifp, &size);

	//Dynamically allocate a 2D array as per the retrieved dimensions
    int **matrix; // matrix:the 2D array
    matrix = malloc(sizeof(int *) *size);
    if(matrix == NULL) //error handling
    {
        printf("Error: Memory not allocated!\n");
        exit(1);
    }
    for(int i = 0; i < size; i++)
    {
        matrix[i] = malloc(sizeof(int *) *size);
        if(matrix[i] == NULL) //error handling
        {
            printf("Error: Memory not allocated!\n");
            exit(1);
        }
    }

	//Read the file line by line by using the function getline as used in get_dimensions
	//Tokenize each line wrt comma to store the values in the square matrix
    char *line = NULL;
    size_t len = 0;
    char *token = NULL;
    for(int i = 0; i < size; i++)
    {
        if(getline(&line, &len, ifp) == -1) //error handling
        {
            printf("Error while reading the file\n");
            exit(1);
        }
        
        token = strtok(line, COMMA);
        for(int j = 0; j < size; j++)
        {
            *(*(matrix + i) + j) = atoi(token);
            token = strtok(NULL, COMMA);
        }
    }

	//Create a structure and initialize its size and array fields appropriately
    Square *square; //*square:a pointer to Square
    square = malloc(sizeof(Square));
    square->size = size;
    square->array = matrix;

	//Open the output file
    //FILE *ofp = fopen(*(argv + 2), "w");
    FILE *ofp = fopen("/Users/XuXianda/Desktop/CS354/Assignment_2_2/Assignment2_2/output.txt", "w");
    if(ofp == NULL) //error handling
    {
        printf("Error while writing the file\n");
        exit(1);
    }

	//Call the function traverse_spirally
    traverse_spirally(square, ofp);

	//Free the dynamically allocated memory
    for(int i = 0; i < size; i++)
    {
        free(square->array[i]);
        square->array[i] = NULL;
        if(square->array[i] != NULL) //error handling
        {
            printf("Error: Memory not freed!\n");
            exit(1);
        }
    }
    free(square->array);
    square->array = NULL;
    if(square->array != NULL) //error handling
    {
        printf("Error: Memory not freed!\n");
        exit(1);
    }
    free(square);
    square = NULL;
    if(square != NULL) //error handling
    {
        printf("Error: Memory not freed!\n");
        exit(1);
    }

	//Close the input file
    fclose(ifp);

	//Close the output file
    fclose(ofp);

	return 0; 
}     
