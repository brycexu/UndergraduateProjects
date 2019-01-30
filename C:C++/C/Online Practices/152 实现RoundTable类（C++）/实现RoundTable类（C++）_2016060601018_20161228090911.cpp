//
//  main.cpp
//  152 实现RoundTable类（C++）
//
//  Created by 徐贤达 on 2016/12/28.
//  Copyright ? 2016年 徐贤达. All rights reserved.
//

#include<iostream>
using namespace std;
class Table
{
private:
    float high;
public:
    Table(float high)
    {
        this->high=high;
    }
    
};

class Circle
{
private:
    float radius;
public:
    Circle(float r)
    {
        radius=r;
    }
    
};

class RoundTable:public Table,public Circle
{
private:
    float high;
    float radius;
    char color[20];
public:
    RoundTable(float radius,float high,char color[]):Circle(radius),Table(high)
    {
        strcpy(this->color, color);
        this->radius=radius;
        this->high=high;
    }
    char* GetColor()
    {
        return color;
    }
    float GetHigh()
    {
        return high;
    }
    float GetArea()
    {
        return 3.14*radius*radius;
    }
};

int main(){
    float radius,high;
    char color[20];
    cin>>radius>>high>>color;
    
    RoundTable RT(radius,high,color);
    cout<<"Area:"<<RT.GetArea()<<endl;
    cout<<"High:"<<RT.GetHigh()<<endl;
    cout<<"Color:"<<RT.GetColor()<<endl;
    return 0;
}