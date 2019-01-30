#include "Shape.h"
#include"acllib.h"
#include<math.h>


CShape::CShape(int x, int y, int width, int height)
{
	this->x = x;
	this->y = y;
	this->width = width;
	this->height = height;
}


CShape::~CShape()
{
}
void CShape::GetShapeData(int &x, int &y, int &width, int &height)
{
	x = this->x;
	y = this->y;
	width = this->width;
	height = this->height;
}
double RAD(double x)
{
	return ((x) / 360.0 * 2 * 3.1415926535);
}
void CShape::DrawTick(int h, int m, int s)
{
	int ox = x + width / 2;
	int oy = y + height / 2;
	int min = width<height ? width : height;
	int hl = min / 4 - min / 7;
	int ml = min / 3 - min / 6;
	int sl = min / 2 - min / 5;
	int i;

	// shape

	setPenWidth(2);
	setPenColor(BLACK);
	setBrushColor(WHITE);
	// label
	setPenWidth(1);
	setPenColor(BLACK);
	int len1 = min / 2 - min / 8, len2 = len1 + 10;
	for (i = 0;i<12;++i)
	{
		moveTo((int)(ox + len1*sin(RAD(180 - i * 30))), (int)(oy + len1*cos(RAD(180 - i * 30))));
		lineTo((int)(ox + len2*sin(RAD(180 - i * 30))), (int)(oy + len2*cos(RAD(180 - i * 30))));
	}
	// hour
	setPenWidth(8);
	setPenColor(BLACK);
	moveTo(ox, oy);
	lineTo((int)(ox + hl*sin(RAD(180 - h * 30))), (int)(oy + hl*cos(RAD(180 - h * 30))));
	// minute
	setPenWidth(4);
	setPenColor(GREEN);
	moveTo(ox, oy);
	lineTo((int)(ox + ml*sin(RAD(180 - m * 6))), (int)(oy + ml*cos(RAD(180 - m * 6))));
	// second
	setPenWidth(2);
	setPenColor(RED);
	moveTo(ox, oy);
	lineTo((int)(ox + sl*sin(RAD(180 - s * 6))), (int)(oy + sl*cos(RAD(180 - s * 6))));


}
