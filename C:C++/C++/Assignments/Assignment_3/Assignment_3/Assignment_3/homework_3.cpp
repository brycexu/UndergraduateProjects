#include <iostream>
#include <map>
#include <vector>
#include <set>
#include <string>
#include <time.h>      // time

using namespace std;

// feel free to use this function if you wish
// purpose: generate random coordinates
// input: none
// output: a vector with 2 coordinates between 1,1 and 4,4
vector<int> Get_A_Random_Square() {
	return vector<int>{rand()%4+1, rand()%4+1};
}

// feel free to use this function if you wish
// purpose: verifies if the coordinates of a square fall within the cave
// input: coordinates of a square
// output: true if the square is in the cave otherwise false
bool Is_Square_Valid(const vector<int> &square) {
	for (auto e : square)
		if (e < 1 || e > 4)
			return false;
	return true;
}

// don't change this function
// purpose: prints a map of the cave to the console
// input: the printable map a vector of strings
// output: none - console output of the cave diagram
void Print_Cave_Diagram(const vector<string> &cave_diagram){
	for (auto s : cave_diagram)
		cout<<s<<endl;
}

// Implement these functions below
// Do not change the function prototpyes
void Initialize_Cave(map<vector<int>, set<string> > &cave);
void Print_Square(map<vector<int>, set<string> > &cave, const vector<int> &rc);
void Get_Cave_Diagram(map<vector<int>, set<string> > &cave, vector<string> &cave_diagram);

// sample main function
int main() {
	srand(time(NULL)); // seed the random generator

	// Declare the cave data structure to 'map' coordinates to a 'set' of strings describing the cell contents
	map<vector<int>, set<string> > cave;

	// Check this out! The cave data structure has a lot going on
	// Uncomment the block below to see a demo of how to use the cave map
	// use the [] to access the set contained in the map
	// insert puts the word "ladder" into the set
	// cave[rc] is the set of words at coordinates rc
	// cave[rc].begin() returns an iterator to the first element of the set
	// note your program will likely crash if the set is empty
	// I recommend checking for this.
	// use the * to dereference the pointer to get the first word stored in the set
	/*
	vector<int> rc{1, 1}; // row column
	cave[rc].insert("ladder");
	if (cave[rc].empty() == false)
		cout<<"cave square (1,1) contains a "<<*cave[rc].begin()<<endl;
     */

	Initialize_Cave(cave);

	for (int r=1; r<=4; r++) {
		for (int c=1; c<=4; c++) {
			vector<int> rc{r, c};
			Print_Square(cave, rc);
		}
	}

	vector<string> cave_diagram;
	Get_Cave_Diagram(cave, cave_diagram);
	Print_Cave_Diagram(cave_diagram);

	return 0;
}

// add the player, ladder, wumpus, pits, gold, stench, breeze to the map
// input: the cave
// output: none
void Initialize_Cave(map<vector<int>, set<string> > &cave) {
	// place the "ladder" in row 1 column 1
    vector<int> ladder{1, 1};
    cave[ladder].insert("ladder");

	// place the "player" at the same location as the ladder
    vector<int> player{1, 1};
    cave[player].insert("player");

	// place the "wumpus" - can't be in the same square as the ladder
    vector<int> wumpus;
    // assign wumpus with the correct random value
    while (true) {
        wumpus = Get_A_Random_Square();
        if (Is_Square_Valid(wumpus)) {
            if (wumpus != ladder) {
                break;
            }
        }
    }
    cave[wumpus].insert("wumpus");

	// place the 3 "pits" - can't be in the same square as the ladder, wumpus, or another pit
    vector<int> pits1;
    // assign pits1 with the correct random value
    while(true) {
        pits1 = Get_A_Random_Square();
        if (Is_Square_Valid(pits1)) {
            if (pits1 != ladder && pits1 != wumpus) {
                break;
            }
        }
    }
    cave[pits1].insert("pit");
    vector<int> pits2;
    // assign pits2 with the correct random value
    while(true) {
        pits2 = Get_A_Random_Square();
        if (Is_Square_Valid(pits2)) {
            if (pits2 != ladder && pits2 != wumpus && pits2 != pits1) {
                break;
            }
        }
    }
    cave[pits2].insert("pit");
    vector<int> pits3;
    // assign pits3 with the correct random value
    while(true) {
        pits3 = Get_A_Random_Square();
        if (Is_Square_Valid(pits3)) {
            if (pits3 != ladder && pits3 != wumpus && pits3 != pits1 && pits3 != pits2) {
                break;
            }
        }
    }
    cave[pits3].insert("pit");

	// place the "gold" - can't be in the same square as a pit or the ladder
    vector<int> gold;
    // assign gold with the correct random value
    while(true) {
        gold = Get_A_Random_Square();
        if (Is_Square_Valid(gold)) {
            if (gold != ladder && gold != pits1 && gold != pits2 && gold != pits3) {
                break;
            }
        }
    }
    cave[gold].insert("gold");

	// place the "stench" squares to the left, right, up, and down from the wumpus
    vector<int> stench1 = wumpus;
    // stench1 is on the left
    stench1[0]--;
    if (Is_Square_Valid(stench1)) {
        cave[stench1].insert("stench");
    }
    vector<int> stench2 = wumpus;
    stench2[0]++;
    // stench2 is on the right
    if (Is_Square_Valid(stench2)) {
        cave[stench2].insert("stench");
    }
    vector<int> stench3 = wumpus;
    stench3[1]--;
    // stench3 is on the up
    if (Is_Square_Valid(stench3)) {
        cave[stench3].insert("stench");
    }
    vector<int> stench4 = wumpus;
    stench4[1]++;
    // stench4 is on the bottom
    if (Is_Square_Valid(stench4)) {
        cave[stench4].insert("stench");
    }

	// place the "breeze" squares to the left, right, up, and down from the three pits
    vector<int> breeze11 = pits1;
    breeze11[0]--; // left
    if (Is_Square_Valid(breeze11)) {
        cave[breeze11].insert("breeze");
    }
    vector<int> breeze12 = pits1;
    breeze12[0]++; // right
    if (Is_Square_Valid(breeze12)) {
        cave[breeze12].insert("breeze");
    }
    vector<int> breeze13 = pits1;
    breeze13[1]--; // up
    if (Is_Square_Valid(breeze13)) {
        cave[breeze13].insert("breeze");
    }
    vector<int> breeze14 = pits1;
    breeze14[1]++; // down
    if (Is_Square_Valid(breeze14)) {
        cave[breeze14].insert("breeze");
    }
    
    // iterator named iter1 is used to traverse the cave
    map<vector<int>, set<string>>::iterator iter1;
    // iterator named iter2 is used to traverse the string
    set<string>::iterator iter2;
    
    vector<int> breeze21 = pits2;
    breeze21[0]--; // left
    if (Is_Square_Valid(breeze21)) {
        bool iscontain = true;
        iter1 = cave.find(breeze21);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze21].insert("breeze");
        }
    }
    vector<int> breeze22 = pits2;
    breeze22[0]++; // right
    if (Is_Square_Valid(breeze22)) {
        bool iscontain = true;
        iter1 = cave.find(breeze22);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze22].insert("breeze");
        }
    }
    vector<int> breeze23 = pits2;
    breeze23[1]--; // up
    if (Is_Square_Valid(breeze23)) {
        bool iscontain = true;
        iter1 = cave.find(breeze23);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze23].insert("breeze");
        }
    }
    vector<int> breeze24 = pits2;
    breeze24[1]++; // down
    if (Is_Square_Valid(breeze24)) {
        bool iscontain = true;
        iter1 = cave.find(breeze24);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze24].insert("breeze");
        }
    }
    
    vector<int> breeze31 = pits3;
    breeze31[0]--; // left
    if (Is_Square_Valid(breeze31)) {
        bool iscontain = true;
        iter1 = cave.find(breeze31);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze31].insert("breeze");
        }
    }
    vector<int> breeze32 = pits3;
    breeze32[0]++; // right
    if (Is_Square_Valid(breeze32)) {
        bool iscontain = true;
        iter1 = cave.find(breeze32);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze32].insert("breeze");
        }
    }
    vector<int> breeze33 = pits3;
    breeze33[1]--; // up
    if (Is_Square_Valid(breeze33)) {
        bool iscontain = true;
        iter1 = cave.find(breeze33);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze33].insert("breeze");
        }
    }
    vector<int> breeze34 = pits3;
    breeze34[1]++; // down
    if (Is_Square_Valid(breeze34)) {
        bool iscontain = true;
        iter1 = cave.find(breeze34);
        if(iter1 != cave.end()) { // avoid duplicate 'breeze'
            set<string> s = iter1->second;
            for(iter2 = s.begin(); iter2 != s.end(); iter2++)
                if((*iter2) == "breeze") {
                    iscontain = false;
                }
        }
        if(iscontain) {
            cave[breeze34].insert("breeze");
        }
    }
    
}


// print the contents of the square
// input: the cave, a vector called rc containing integers
// output: none
void Print_Square(map<vector<int>, set<string> > &cave, const vector<int> &rc) {
    // iterator named iter1 is used to traverse the cave
    map<vector<int>, set<string>>::iterator iter1;
    iter1 = cave.find(rc);
    if(iter1 != cave.end()) {
        cout << "This part of the cave contains" << endl;
        set<string> s = iter1->second;
        // iterator named iter2 is used to traverse the string
        set<string>::iterator iter2;
        for(iter2 = s.begin(); iter2 != s.end(); iter2++)
            cout << "    " << (*iter2) << endl;
    } else {
        cout << "This part of the cave contains" << endl;
        cout << "    " << "nothing" << endl;
    }
}

// build a vector of strings where each string in the vector represents one row of the cave output
// input: the cave, a vector called cave_diagram containing strings
// output: none
void Get_Cave_Diagram(map<vector<int>, set<string> > &cave, vector<string> &cave_diagram) {
	int cell_rows = 5;
	int cell_columns = 11;
	int total_rows = cell_rows*4 + 1;
	int total_columns = cell_columns*4 + 1;

	// fill in with vertical cell divisions
	for (int r=0; r<total_rows; r++) {
		string row(total_columns, ' ');
		for (int c=0; c<total_columns; c+=cell_columns) {
			row[c] = '|';
		}
		cave_diagram.push_back(row);
	}

	// udpate horizontal rows with '-'
	for (int i=0; i<total_rows; i+=cell_rows) {
		cave_diagram[i] = string(total_columns, '-');
	}

	// update cell corners with '+'
	for (int r=0; r<total_rows; r+=cell_rows) {
		for (int c=0; c<total_columns; c+=cell_columns) {
			cave_diagram[r][c]='+';
		}
	}

	// replace the part of the string with the cell contents
    // iterator named iter1 is used to traverse the cave
    map<vector<int>, set<string>>::iterator iter1;
    // iterator named iter2 is used to traverse the string
    set<string>::iterator iter2;
    vector<int> l;
    set<string> s;
    string str;
    int number; // number is used to print more than one line in the same area
    for (iter1 = cave.begin(); iter1 != cave.end(); iter1++) {
        number = 0;
        l = iter1->first;
        int row = l[0];
        int col = l[1];
        s = iter1->second;
        for (iter2 = s.begin(); iter2 != s.end(); iter2++) {
            str = *(iter2);
            for (int j = 0; j < str.length(); j++) {
                cave_diagram[(row-1) * 5 + 1 + number][(col-1) * 11 + 2 + j] = str[j];
            }
            number++;
        }
    }
    
}


