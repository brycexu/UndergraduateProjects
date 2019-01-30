// Copyright 2018 <Xianda Xu>
////////////////////////////////////////////////////////////////////////////////
// Main File:        division.c
// This File:        division.c
// Other Files:      intdate.c sendsig.c
// Semester:         CS 354 Fall 2018
//
// Author:           Xianda Xu
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
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <string.h>

int number_division = 0;  // Counter of the division
struct sigaction sigfpe;
struct sigaction sigint;

void handler_sigfpe(int sig) {
    printf("Error: a division by 0 operation was attempted.\n");
    printf("Total number of operations completed successfully: %i\n",
           number_division);
    printf("The program will be terminated.\n");
    exit(0);
}

void handler_sigint(int sig) {
    printf("\nTotal number of operations successfully completed: %i\n",
           number_division);
    printf("The program will be terminated.\n");
    exit(0);
}

int main(int argc, char *argv[]) {
    // Register SIGFPE handler
    // Initialize the struct
    memset(&sigfpe, 0, sizeof(sigfpe));
    // Set the handler
    sigfpe.sa_handler = handler_sigfpe;
    sigfpe.sa_flags = 0;
    if (sigaction(SIGFPE, &sigfpe, NULL) != 0) {
        printf("ERROR");
        exit(1);
    }
    // Register SIGINT handler
    // Initialize the struct
    memset(&sigint, 0, sizeof(sigint));
    // Set the handler
    sigint.sa_handler = handler_sigint;
    sigint.sa_flags = 0;
    if (sigaction(SIGINT, &sigint, NULL) != 0) {
        printf("ERROR");
        exit(1);
    }
    while (1) {
        // Set a buffer
        char buffer[100];
        // Get the first integer
        printf("Enter first integer: ");
        fgets(buffer, sizeof(buffer), stdin);
        int firstInt = atoi(buffer);
        // Get the second integer
        printf("Enter second integer: ");
        fgets(buffer, sizeof(buffer), stdin);
        int secondInt = atoi(buffer);
        // Get result
        int result = firstInt / secondInt;
        // Get remainder
        int remainder = firstInt % secondInt;
        printf("%i / %i is %i with a remainder of %i\n",
               firstInt, secondInt, result, remainder);
        // Increments the counter
        number_division++;
    }
}

