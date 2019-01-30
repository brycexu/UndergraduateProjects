#pragma once
class CShape
{
protected:
	int x, y, width, height;
public:
	CShape(int x,int y,int width,int height);
	~CShape();
	void GetShapeData(int &x, int &y, int &width, int &height);
	void DrawTick(int h, int m, int s);
	void DrawShape() {};//不能结合具体形状绘制
};

