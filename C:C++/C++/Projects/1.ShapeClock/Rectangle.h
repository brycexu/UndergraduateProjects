#pragma once
#include "Shape.h"
class Rectangle :
	public CShape
{
public:
	Rectangle(int x,int y,int width,int height);
	~Rectangle();
	void DrawShape();
};

