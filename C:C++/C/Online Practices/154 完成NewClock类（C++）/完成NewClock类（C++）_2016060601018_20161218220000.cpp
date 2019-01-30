#include <iostream>
#include "Clock.h"
class NewClock: public Clock
{
public:
    NewClock (int h,int m,int s):Clock(h,m,s)
    {}
    void showTime()
    {
        if(getHour()>=12)
        {
            cout<<"Now:"<<getHour()-12<<":"<<getMinute()<<":"<<getSecond()<<"PM"<<endl;
        }
        else
        {
            cout<<"Now:"<<getHour()<<":"<<getMinute()<<":"<<getSecond()<<"AM"<<endl;
        }
    }
};
    Clock* Clock::createNewClock(int h,int m,int s){
    return new NewClock(h,m,s);
}
