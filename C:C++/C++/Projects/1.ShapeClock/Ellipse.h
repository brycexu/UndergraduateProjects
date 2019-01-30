#pragma once
#include "Shape.h"
class Ellipse :
	public CShape
{
public:
	Ellipse(int x,int y,int width,int height);
	~Ellipse();
	void DrawShape();
};

