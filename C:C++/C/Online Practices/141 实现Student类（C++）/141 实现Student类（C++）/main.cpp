//
//  main.cpp
//  141 实现Student类（C++）
//
//  Created by 徐贤达 on 2016/12/27.
//  Copyright © 2016年 徐贤达. All rights reserved.
//

#include <iostream>
using namespace std;
class Student
{
private:
    char name[10];
    char num[12];
    int grade1;
    int grade2;
    int grade3;
    static double sum1,sum2,sum3;
public:
    Student(char name[],char num[],int grade1,int grade2,int grade3)
    {
        strcpy(this->name, name);
        strcpy(this->num, num);
        this->grade1=grade1;
        this->grade2=grade2;
        this->grade3=grade3;
        sum1+=grade1;
        sum2+=grade2;
        sum3+=grade3;
    }
    double average1()
    {
        return sum1/3;
    }
    double average2()
    {
        return sum2/3;
    }
    double average3()
    {
        return sum3/3;
    }
    void display()
    {
        cout<<name<<" "<<num<<" "<<grade1<<" "<<grade2<<" "<<grade3<<endl;
    }
};

double Student::sum1=0;
double Student::sum2=0;
double Student::sum3=0;

int main(){
    Student *stu1,*stu2,*stu3;
    char name1[10],name2[10],name3[10];
    char num1[12],num2[12],num3[12];
    int grade1[3],grade2[3],grade3[3];
    cin>>name1>>num1>>grade1[0]>>grade1[1]>>grade1[2];
    cin>>name2>>num2>>grade2[0]>>grade2[1]>>grade2[2];
    cin>>name3>>num3>>grade3[0]>>grade3[1]>>grade3[2];
    stu1 = new Student(name1,num1,grade1[0],grade1[1],grade1[2]);
    stu2 = new Student(name2,num2,grade2[0],grade2[1],grade2[2]);
    stu3 = new Student(name3,num3,grade3[0],grade3[1],grade3[2]);
    
    stu1->display();
    stu2->display();
    stu3->display();
    
    cout<<"The average grade of course1:"<<stu2->average1()<<endl;
    cout<<"The average grade of course2:"<<stu2->average2()<<endl;
    cout<<"The average grade of course3:"<<stu2->average3()<<endl;
    return 0;
}
