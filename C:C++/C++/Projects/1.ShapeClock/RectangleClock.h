#pragma once
#include "Clock.h"
#include"Rectangle.h"
class RectangleClock :
	public Clock,public Rectangle
{
public:
	RectangleClock(int x,int y,int width,int height);
	RectangleClock(int h,int m,int s,int x, int y, int width, int height);
	~RectangleClock();
	void DispTime();
};

