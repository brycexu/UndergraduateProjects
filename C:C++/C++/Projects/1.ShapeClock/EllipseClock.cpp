#include "EllipseClock.h"




EllipseClock::EllipseClock(int x, int y, int width, int height):Ellipse(x,y,width,height)
{

}
EllipseClock::EllipseClock(int h, int m, int s, int x, int y, int width, int height)
	:Clock(h,m,s),Ellipse(x,y,width,height)
{

}
EllipseClock::~EllipseClock()
{
}
void EllipseClock::DispTime()
{
	DrawShape();
	DrawTick(h,m,s);
}
