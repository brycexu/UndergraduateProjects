// Copyright 2018 <Xianda Xu>
////////////////////////////////////////////////////////////////////////////////
// Main File:        sendsig.c
// This File:        sendsig.c
// Other Files:      division.c intdate.c
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
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <string.h>

/*
 This function is the main function
 argc:the number of arguments
 argv:the array of arguments
 */
int main(int argc, char *argv[]) {
    // Check the format
    if (argc != 3) {
        fprintf(stderr, "Usage: <signal type> <pid>\n");
        return 1;
    }
    // Get the type of the signal
    char *type = argv[1];
    // Get the pif of the process
    int pidnum = atoi(argv[2]);
    pid_t pid = pidnum;
    // SIGUSR1
    if (strcmp(type, "-u") == 0) {
        // Error checking
        if (pid == 0 || pid == -1) {
            fprintf(stderr, "Usage: <signal type> <pid>\n");
            exit(0);
        }
        // Send the signal
        kill(pid, SIGUSR1);
        exit(0);
    }
    // SIGINT
    if (strcmp(type, "-i") == 0) {
        // Error checking
        if (pid == 0 || pid == -1) {
            fprintf(stderr, "Usage: <signal type> <pid>\n");
            exit(0);
        }
        // Send the signal
        kill(pid, SIGINT);
        exit(0);
    }
}
