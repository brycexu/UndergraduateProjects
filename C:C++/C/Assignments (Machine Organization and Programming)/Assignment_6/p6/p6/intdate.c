// Copyright 2018 <Xianda Xu>
////////////////////////////////////////////////////////////////////////////////
// Main File:        intdate.c
// This File:        intdate.c
// Other Files:      division.c sendsig.c
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
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int seconds = 3;  // The interval of alarms
int number_SIGUSR1 = 0;  // The counter of SIGUSR1
struct sigaction act;  // Alarm signal
struct sigaction siguser1;  // SIGUSR1 signal
struct sigaction sigint;  // SIGINT signal

/*
 This function is the handler of alarm
 sig:the signal number
 */
void handler_act(int sig) {
    time_t t;
    t = time(&t);  // Get the current time
    if (t == (time_t) - 1) {
        fprintf(stderr, "Failed to get time");
        exit(1);
    }
    // Print the current time
    printf("PID: %i | Current Time: %s", getpid(), ctime(&t));
    alarm(seconds);  // Reset the alarm
}

/*
 This function is the handler of siguser1
 sig:the signal number
 */
void handler_siguser1(int sig) {
    number_SIGUSR1++;  // Increment the counter
    printf("SIGUSR1 caught!\n");
}

/*
 This function is the handler of sigint
 sig:the signal number
 */
void handler_sigint(int sig) {
    printf("\nSIGINT received.\n");
    printf("SIGUSR1 was received %i times. Exiting now.\n", number_SIGUSR1);
    exit(0);  // Exit
}

/*
 This function is the main function
 args:the number of arguments
 argv:the array of arguments
 */
int main(int argc, char* argv[]) {
    alarm(seconds);
    // Register Alarm handler
    // Initialize the struct
    memset(&act, 0, sizeof(act));
    // Set the handler
    act.sa_handler = handler_act;
    act.sa_flags = 0;
    if (sigaction(SIGALRM, &act, NULL) != 0) {
        printf("ERROR");
        exit(1);
    }
    // Register SIGUSR1 handler
    // Initialize the struct
    memset(&siguser1, 0, sizeof(siguser1));
    // Set the handler
    siguser1.sa_handler = handler_siguser1;
    siguser1.sa_flags = 0;
    if (sigaction(SIGUSR1, &siguser1, NULL) != 0) {
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
    printf("Pid and time will be printed every %i seconds.\n", seconds);
    printf("Enter ^C to end the program.\n");
    while (1) {
    }
}

