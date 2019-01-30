#include "Rectangle.h"
#include"acllib.h"


Rectangle::Rectangle(int x, int y, int width, int height):CShape(x,y,width,height)
{
}


Rectangle::~Rectangle()
{
}
void Rectangle::DrawShape()
{
	setPenColor(BLACK);
	setPenWidth(2);
	setBrushColor(WHITE);
	rectangle(x, y,x+ width,y+ height);
}