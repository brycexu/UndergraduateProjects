#include "Ellipse.h"
#include"acllib.h"


Ellipse::Ellipse(int x, int y, int width, int height):CShape(x,y,width,height)
{
}


Ellipse::~Ellipse()
{
}
void Ellipse::DrawShape()
{
	setPenColor(BLACK);
	setPenWidth(2);
	setBrushColor(WHITE);
	ellipse(x, y, x+width, y+height);
}
