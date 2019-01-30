////////////////////////////////////////////////////////////////////////////////
// Main File:        cache1D.c
// This File:        cache1D.c
// Other Files:      cache2Drows.c & cache2Dcols.c
// Semester:         CS 354 Fall 2018
//
// Author:           Bryce Xu
// Email:            xxu@wisc.edu
// CS Login:         bxu
//
/////////////////////////// OTHER SOURCES OF HELP //////////////////////////////
//                   fully acknowledge and credit all sources of help,
//                   other than Instructors and TAs.
//
// Persons:          Identify persons by name, relationship to you, and email.
//                   Describe in detail the the ideas and help they provided.
//
// Online sources:   avoid web searches to solve your problems, but if you do
//                   search, be sure to include Web URLs and description of 
//                   of any information you find.
///////////////////////////////////////////////////////////////////////////

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int array[100000];

/*This file mainly create a 1D array which has 
 * 100000 elements in ascending order.
 *
 */
int main()
{
    for (int i = 0; i < 100000; i++){
        array[i] = i;
    }

    return 0;
}

