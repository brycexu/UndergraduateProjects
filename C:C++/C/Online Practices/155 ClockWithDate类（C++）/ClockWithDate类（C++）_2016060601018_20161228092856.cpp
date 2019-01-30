//
//  main.cpp
//  155 ClockWithDate类（C++）
//
//  Created by 徐贤达 on 2016/12/27.
//  Copyright ? 2016年 徐贤达. All rights reserved.
//

#include <iostream>
using namespace std;
class Clock{
public:
    Clock(int h,int m,int s){
        hour =(h>23? 0:h);
        minute = (m>59?0:m);
        second = (s>59?0:s);
    }
    virtual void run(){
        second = second+1;
        if (second>59)
        {
            second =0;
            minute+=1;
        }
        if (minute>59)
        {
            minute =0;
            hour+=1;
        }
        if (hour>23)
        {
            hour =0;
        }
    }
    virtual void showTime(){
        cout<<"Now:"<<hour<<":"<<minute<<":"<<second<<endl;
    }
    int getHour(){return hour;}
    int getMinute(){return minute;}
    int getSecond(){return second;}
    
    Clock * createClockWithDate(int h,int m,int s,int year,int month,int day);
private:
    int hour;
    int minute;
    int second;
};

class Date{
public:
    Date(int y=1996,int m=1,int d=1){
        day =d;
        year =y;
        month =m;
        if (m>12||m<1)
        {
            m=1;
        }
        if(d>days(y,m)){
            day = 1;
        }
    };
    int days(int year,int month);
    void NewDay();
    void display(){
        cout<<year<<"-"<<month<<"-"<<day<<endl;
    }
private:
    int year;
    int month;
    int day;
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

void Date::NewDay()
{
    int s=0;
    if (month==1||month==3||month==5||month==7||month==8||month==10||month==12)
    {
        s=31;
    }
    if (month==4||month==6||month==9||month==11)
    {
        s=30;
    }
    if (month==2)
    {
        if ((year%4==0&&year%100!=0)||(year%400==0))
        {
            s=29;
        }
        else
        {
            s=28;
        }
    }
    if (day==s&&month!=12)
    {
        day=1;
        month++;
    }
    else if (day==s&&month==12)
    {
        day=1;
        month=1;
        year++;
    }
    else if ((day!=s))
    {
        day++;
    }
}

class ClockWithDate:public Clock,public Date
{
private:
    int hour;
    int minute;
    int second;
    int year;
    int month;
    int day;
public:
    ClockWithDate(int hour,int minute,int second,int year,int month,int day):Clock(hour,minute,second),Date(year,month,day)
    {
        this->hour =(hour>23? 0:hour);
        this->minute = (minute>59?0:minute);
        this->second = (second>59?0:second);
        this->day =day;
        this->year =year;
        this->month =month;
        if (month>12||month<1)
        {
            this->month=1;
        }
        if(day>days(year,month)){
            this->day = 1;
        }
    }
    virtual void showTime()
    {
        cout<<"Now:"<<hour<<":"<<minute<<":"<<second<<endl;
        cout<<year<<"-"<<month<<"-"<<day<<endl;
    }
    virtual void run()
    {
        if (second==59&&minute==59&&hour==23)
        {
            second=minute=hour=0;
            int s=0;
            if (month==1||month==3||month==5||month==7||month==8||month==10||month==12)
            {
                s=31;
            }
            if (month==4||month==6||month==9||month==11)
            {
                s=30;
            }
            if (month==2)
            {
                if ((year%4==0&&year%100!=0)||(year%400==0))
                {
                    s=29;
                }
                else
                {
                    s=28;
                }
            }
            if (day==s&&month!=12)
            {
                day=1;
                month++;
            }
            else if (day==s&&month==12)
            {
                day=1;
                month=1;
                year++;
            }
            else if ((day!=s))
            {
                day++;
            }
        }
        else
        {
        second = second+1;
        if (second>59)
        {
            second =0;
            minute+=1;
        }
        if (minute>59)
        {
            minute =0;
            hour+=1;
        }
        if (hour>23)
        {
            hour =0;
        }
        }
    }
};
Clock* Clock::createClockWithDate(int h,int m,int s,int year,int month,int day){
    return new ClockWithDate(h,m,s,year,month,day);
}
