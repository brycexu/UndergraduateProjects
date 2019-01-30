#include "RectangleClock.h"



RectangleClock::RectangleClock(int x, int y, int width, int height):Rectangle(x,y,width,height)
{

}
RectangleClock::RectangleClock(int h, int m, int s, int x, int y, int width, int height)
	:Clock(h,m,s),Rectangle(x,y,width,height)
{

}
void RectangleClock::DispTime()
{
	DrawShape();
	DrawTick(h, m, s);
}


RectangleClock::~RectangleClock()
{
}
