#include "Clock.h"
#include<ctime>
#include"acllib.h"
#include<iostream>
using namespace std;



Clock::Clock(int h, int m, int s )
{
	SetTime(h, m, s);
	
}
Clock::Clock( )
{
	time_t t;
	struct tm tmm;
	t = time(NULL);
	localtime_s(&tmm,&t);
	h = tmm.tm_hour;
	m = tmm.tm_min;
	s = tmm.tm_sec;
	
}
Clock::Clock(Clock &c)
{
	h = c.h;
	m = c.m;
	s = c.s;
	
}

Clock::~Clock()
{
}

void Clock::SetTime(int h, int m, int s)
{
	this->h = h;
	this->m = m;
	this->s = s;
}
void Clock::GetTime(int &h, int &m, int &s)
{
	h = this->h;
	m = this->m;
	s = this->s;
}

void Clock::AddOneSecond()
{
	s++;
	if (s >= 60)
	{
		s = 0;m++;
		if (m >= 60)
		{
			m = 0;
			h++;
			if (h >= 12)h = 0;
		}
	}
}

/*void Clock::ShowTime(int x, int y, int width, int height)
{
	
		
		switch (shape)
		{
		case ellipseShape:
			ellipse(x, y, width, height);
			break;
		case rectShape:
			rectangle(x, y, x + width, y + height);
			break;
		}
		
		

}
*/
