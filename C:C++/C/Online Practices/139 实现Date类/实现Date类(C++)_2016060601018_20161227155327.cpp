//
//  main.cpp
//  139 实现Date类
//
//  Created by 徐贤达 on 2016/12/27.
//  Copyright ? 2016年 徐贤达. All rights reserved.
//

#include <iostream>
using namespace std;
class Date{
public:
    Date(int y =1996,int m=1,int d=1);
    int days(int year,int month);
    void NewDay();
    void display()
    {
        cout<<year<<"-"<<month<<"-"<<day<<endl;
    }
private:
    int year; //年
    int month; //月
    int day;  // 日
};

int Date::days(int year, int month)
{
    if (month==1||month==3||month==5||month==7||month==8||month==10||month==12)
    {
        return 31;
    }
    if (month==4||month==6||month==9||month==11)
    {
        return 30;
    }
    if (month==2)
    {
        if ((year%4==0&&year%100!=0)||(year%400==0))
        {
            return 29;
        }
        else
        {
            return 28;
        }
    }
    return 0;
}

Date::Date(int y, int m,int d)
{
    year=y;
    month=m;
    day=d;
    int s=0;
    if (m==1||m==3||m==5||m==7||m==8||m==10||m==12)
    {
        s=31;
    }
    if (m==4||m==6||m==9||m==11)
    {
        s=30;
    }
    if (m==2)
    {
        if ((y%4==0&&y%100!=0)||(y%400==0))
        {
            s=29;
        }
        else
        {
            s=28;
        }
    }
    if(month<1||month>12)
    {
        cout<<"Invalid month!"<<endl;
        month=1;
    }
    if(day<1||day>s)
    {
        cout<<"Invalid day!"<<endl;
        day=1;
    }
    void display();
}

void Date::NewDay()
{
    int s=0;
    int m=month;
    int y=year;
    if (m==1||m==3||m==5||m==7||m==8||m==10||m==12)
    {
        s=31;
    }
    if (m==4||m==6||m==9||m==11)
    {
        s=30;
    }
    if (m==2)
    {
        if ((y%4==0&&y%100!=0)||(y%400==0))
        {
            s=29;
        }
        else
        {
            s=28;
        }
    }
    if (day==s)
    {
        day=1;
        month++;
    }
    else
    {
        day++;
    }
}

