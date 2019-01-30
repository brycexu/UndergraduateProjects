#pragma once

class Clock
{
protected:
	int h, m, s;
	
public:
	Clock(int h,int m,int s);
	Clock();
	Clock(Clock &c);
	~Clock();
	void SetTime(int h, int m, int s);
	void GetTime(int &h,int &m,int &s);
	void DispTime() {};//不能结合具体形状显示
	
	void AddOneSecond();
	//void ShowTime(int x, int y, int width, int height);
};

