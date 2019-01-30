/* ******************************************************
 * Name: Xianda (Bryce) Xu
 * Wisc ID: 9080845747
 * OS: MAC
 * IDE (or text editor): XCODE
 * Compiler: GCC of XCODE
 * How long did the assignment take you to complete in minutes:
 * What other resources did you consult (copy and paste links below:
*/ // ******************************************************

// Include appropriate libraries to work with input/output and strings.
#include <string>
#include <iostream>


using namespace std;

// function declarations -- do not changes these
// you must complete the function definitions below
string Get_Name();
void Print_Welcome_Message(string name);

// do not change main
int main() {
	string name;
	name = Get_Name();
	Print_Welcome_Message(name);
}


// Get_Name asks the user to enter their name
// Note: "Blackbeard", "Anne Bonny", and
// "Captain Jack Sparrow" are all valid names
// The user may also choose not to enter a name.
// input: none
// output: a string containing the user entered name
// Note: do not change the function prototype on the next line
string Get_Name() {
	// declare a variable to hold the name
	string name = "";

	// prompt the user to enter a name
    cout<<"Enter your name: "<<endl; // output a prompt


	// read the name entered by the user
    getline(cin,name); // using getline in order to read the whole line
    

	// return the name entered by the user
	    // i.e. replace the text "name" in the return
	    // statement below with the name supplied by the user
	return name;
}

// Prints the welcome message
// input: a string with the user's name
// output: writes the welcome message to the screen
// return value: none
void Print_Welcome_Message(string name) {
    // print the top row of stars
    int nameLength = name.length(); // get the length of char name
    if(nameLength == 0) { // when name is null
        for(int i=0; i < 35; i++) {
            cout<<"*"; // print 35 stars
        }
        cout<<endl;
    } else { // when name is not null
        for(int i=0; i < 36 + nameLength; i++) {
            cout<<"*"; // print 36 + nameLength stars
        }
        cout<<endl;
    }
    
	// print the second line
    if(nameLength == 0) { // when name is null
        for(int i=0; i < 35; i++) {
            if(i == 0 || i == 34) {
                cout<<"*"; // print stars at the front and the rear
            } else {
                cout<<" "; // print whitespace otherwise
            }
        }
        cout<<endl;
    } else { // when name is not null
        for(int i=0; i < 36 + nameLength; i++) {
            if(i == 0 || i == 35 + nameLength) {
                cout<<"*"; // print stars at the front and the rear
            } else {
                cout<<" "; // print whitespace otherwise
            }
        }
        cout<<endl;
    }

	// print the welcome message
    if(nameLength == 0) { // when name is null, print welcome directly
        cout<<"* Hello! Welcome to CS 368 (C++)! *"<<endl;
    } else { // when name is not null, print in parts
        cout<<"* Hello ";
        cout<<name;
        cout<<"! Welcome to CS 368 (C++)! *"<<endl;
    }

	// print the fourth line
    // the same as the second line
    if(nameLength == 0) {
        for(int i=0; i < 35; i++) {
            if(i == 0 || i == 34) {
                cout<<"*";
            } else {
                cout<<" ";
            }
        }
        cout<<endl;
    } else {
        for(int i=0; i < 36 + nameLength; i++) {
            if(i == 0 || i == 35 + nameLength) {
                cout<<"*";
            } else {
                cout<<" ";
            }
        }
        cout<<endl;
    }


	// print the bottom row of stars
    // the same as the first line
    if(nameLength == 0) {
        for(int i=0; i < 35; i++) {
            cout<<"*";
        }
        cout<<endl;
    } else {
        for(int i=0; i < 36 + nameLength; i++) {
            cout<<"*";
        }
        cout<<endl;
    }


	return;
}


/* Sample console text - the console should appear exactly as follows
Including white spaces
I use an automatic grading script to easily identify correct work.


Enter your name: Mike

****************************************
*                                      *
* Hello Mike! Welcome to CS 368 (C++)! *
*                                      *
****************************************


Enter your name: The Dread Pirate Roberts

************************************************************
*                                                          *
* Hello The Dread Pirate Roberts! Welcome to CS 368 (C++)! *
*                                                          *
************************************************************


(If the user doesn't enter a name)
Enter your name:

**************************************
*                                    *
* Hello! Welcome to CS 368 (C++)! :) *
*                                    *
**************************************


*/

