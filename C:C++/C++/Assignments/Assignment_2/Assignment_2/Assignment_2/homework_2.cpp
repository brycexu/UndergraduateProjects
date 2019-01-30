/* ******************************************************
 * Name:Bryce Xu
 * Wisc ID:9080845747
 * OS:Mac
 * IDE (or text editor):Xcode
 * Compiler:GCC of XCODE
 * How long did the assignment take you to complete in minutes:1 hour
 * What other resources did you consult (copy and paste links below:None
*/ // ******************************************************

#include <iostream>
#include <iomanip>
#include <string>
#include <fstream>

using namespace std;

const int MAX_CLASS_SIZE = 100;
const int MAX_NUMBER_OF_ASSIGNMENTS = 100;

// do not change these prototypes.  Add your code to the function definitions below
void Read_Grade_File(string names[MAX_CLASS_SIZE][2], int scores[MAX_CLASS_SIZE][MAX_NUMBER_OF_ASSIGNMENTS], int *number_of_students, int *number_of_assignments, const string input_filename);
void Format_Case_Of_Names(string names[MAX_CLASS_SIZE][2], const int number_of_students);
void Compute_Total_And_Percent(int scores[MAX_CLASS_SIZE][MAX_NUMBER_OF_ASSIGNMENTS], int total[], float percent[], int number_of_students, int number_of_assignments);
void Write_Formatted_Grades(string names[MAX_CLASS_SIZE][2], int total[], float percent[], const int number_of_students, const string output_filename);

// There is no need to change main. However you are encouraged to write code
// to write data to the console to check the correctness of each of your functions as
// as you work.
int main() {
	string input_filename="unformatted_grades.txt";
	string output_filename="formatted_grades.txt";
	string names[MAX_CLASS_SIZE][2];
	int scores[MAX_CLASS_SIZE][MAX_NUMBER_OF_ASSIGNMENTS];
	int number_of_students=0;
	int number_of_assignments=0;
	int total[MAX_CLASS_SIZE];
	float percent[MAX_CLASS_SIZE];

	Read_Grade_File(names, scores, &number_of_students, &number_of_assignments, input_filename);
	Format_Case_Of_Names( names, number_of_students);
	Compute_Total_And_Percent( scores, total, percent, number_of_students, number_of_assignments);
	Write_Formatted_Grades(names, total, percent, number_of_students, output_filename);
    
	return 0;
}

// Add your code below to define these functions
// remember to add comments to each function to describe the
// 1) purpose, 2) input, and 3) output of the functions
void Read_Grade_File(string names[MAX_CLASS_SIZE][2], int scores[MAX_CLASS_SIZE][MAX_NUMBER_OF_ASSIGNMENTS], int *number_of_students, int *number_of_assignments, const string input_filename)
{
    // purpose:read information from the file
    // input:arrays to store names,scores, pointers to number of students and assignments and the name of input file
    // output:null
    
    // create an input file stream object and attach it to a file
    ifstream in;
    in.open(input_filename);
    // the tag of "number_of_students"
    string tag1;
    // the number of students
    string student_number;
    // the tag of "number_of_assignments"
    string tag2;
    // the number of assignments
    string assignment_number;
    in>>tag1;
    in>>student_number;
    in>>tag2;
    in>>assignment_number;
    // read the number of students
    *number_of_students = stoi(student_number);
    // read the number of assignments
    *number_of_assignments = stoi(assignment_number);
    string line;
    // skip unused lines
    getline(in,line);
    getline(in,line);
    int i,j;
    // student's id
    string id;
    // student's first name
    string first_name;
    // student's last name
    string last_name;
    // student's score
    string score;
    for(i = 0; i < stoi(student_number); i++)
    {
        // read each line
        in>>id;
        in>>first_name;
        names[i][0] = first_name;
        in>>last_name;
        names[i][1] = last_name;
        for(j = 0; j < stoi(assignment_number); j++)
        {
            in>>score;
            scores[i][j] = stoi(score);
        }
    }
    // close the filestream
    in.close();
}

void Format_Case_Of_Names(string names[MAX_CLASS_SIZE][2], const int number_of_students)
{
    // purpose:change the format of student names
    // input:the array storing names and the number of students
    // output:null
    
    int i,j,k;
    // recording the length of a string
    int length;
    for(i = 0; i < number_of_students; i++)
    {
        for(j = 0; j < 2; j++)
        {
            length = (int)names[i][j].length();
            // if the first letter of first/last name is lowercase, change it to be uppercase
            if(names[i][j][0] >= 'a' && names[i][j][0] <= 'z')
            {
                names[i][j][0] -= 32;
            }
            // if the rest letters of first/last name is uppercase, change it to be lowercase
            for(k = 1; k < length; k++)
            {
                if(names[i][j][k] >= 'A' && names[i][j][k] <= 'Z')
                {
                    names[i][j][k] += 32;
                }
            }
        }
    }
}

void Compute_Total_And_Percent(int scores[MAX_CLASS_SIZE][MAX_NUMBER_OF_ASSIGNMENTS], int total[], float percent[], int number_of_students, int number_of_assignments)
{
    // purpose:compute the total score and percent of score for each student
    // input:arrays storing scores,total score and percent and the number of students and assignments
    // output:null
    
    int i,j;
    int sum;
    for(i = 0; i < number_of_students; i++)
    {
        sum = 0;
        for(j = 0; j < number_of_assignments; j++)
        {
            sum += scores[i][j];
        }
        total[i] = sum;
        percent[i] = (float)(10 * sum) / number_of_assignments;
    }
}

void Write_Formatted_Grades(string names[MAX_CLASS_SIZE][2], int total[], float percent[], const int number_of_students, const string output_filename)
{
    // purpose:write information into the file
    // input:arrays storing names,total score and percent and the number of students and assignments & output file
    // output:null
    
    // create an output file stream object and attach it to a file
    ofstream out;
    out.open(output_filename);
    int i,j;
    // the number of white space for aligning
    int make_up;
    for(i = 0; i < number_of_students; i++)
    {
        make_up = (int)(18 - names[i][0].length() - names[i][1].length());
        out<<names[i][1];
        out<<","<<" ";
        out<<names[i][0];
        // align
        for(j = 0; j < make_up; j++)
        {
            out<<" ";
        }
        out<<total[i];
        if((int)percent[i] == 100)
        {
            out<<"  ";
        }
        else
        {
            out<<"   ";
        }
        // keep the precision
        out<<fixed;
        out<<setprecision(1);
        out<<percent[i]<<" "<<endl;
    }
    // close the file
    out.close();
}










