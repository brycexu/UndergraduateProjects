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
	void DispTime() {};//���ܽ�Ͼ�����״��ʾ
	
	void AddOneSecond();
	//void ShowTime(int x, int y, int width, int height);
};

