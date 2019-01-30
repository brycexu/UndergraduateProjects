#include"acllib.h"
#include"EllipseClock.h"
#include"RectangleClock.h"

const int mWidth = 800, mHeight = 360;
void timerEvet(int id);
EllipseClock eClock(30, 30, 200, 300);
RectangleClock rClock(400, 30, 200, 300);
int Setup()
{
	initWindow("Clock with shape", DEFAULT, DEFAULT, mWidth, mHeight);
	registerTimerEvent(timerEvet);
	startTimer(0, 1000);

	return 0;
}
void timerEvet(int id)
{
	switch (id)
	{
	case 0:
		eClock.AddOneSecond();
		rClock.AddOneSecond();
		beginPaint();
		clearDevice();
		eClock.DispTime();
		rClock.DispTime();
		endPaint();
		break;
	default:
		break;
	}
}