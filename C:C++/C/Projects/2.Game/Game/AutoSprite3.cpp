#include<time.h>
#include "AutoSprite3.h"



CAutoSprite3::CAutoSprite3()
{
}


CAutoSprite3::~CAutoSprite3()
{
}
CAutoSprite3::CAutoSprite3(CAutoSprite3 &a)
{
	strcpy_s(name, a.name);
	loadImage(name, &img);
	x3 = a.x3;
	y3 = a.y3;
	dx3 = a.dx3;
	dy3 = a.dy3;
	width3 = a.width3;
	height3 = a.height3;
}
CAutoSprite3::CAutoSprite3(const char *name, int w, int h,int mw3,int mh3)
{
	strcpy_s(this->name, name);
	loadImage(name, &img);
	width3 = w;
	height3 = h;
	srand((unsigned)time(NULL));
	this->mh3 = mh3;
	this->mw3 = mh3;
	x3 = rand() % mw3-w;
	if ( x3<=width3)
	{
		x3=2*width3;
	}
	if (x3>=mw3-width3)
	{
		x3=2*width3;
	}
	y3 = rand() % mh3-h;
	if (y3<=height3)
	{
		y3=2*height3;
	}
	if(y3>=mh3-height3)
	{
		y3=2*height3;
	}
	dx3 =  8;
	dy3 =  8;
}

void CAutoSprite3::Move()
{
	x3 += dx3;
	y3 += dy3;
	if (x3 >= mw3+2*width3 || x3 <= 0)dx3 *= -1;
	if (y3 >= mh3-height3 || y3 <= 0)dy3 *= -1;
}
void CAutoSprite3::drawImageScale(int w, int h)
{
	putImageScale(&img, x3, y3, w, h);
}
void CAutoSprite3::drawImageScale()
{
	putImageScale(&img, x3, y3,width3,height3);
}
void CAutoSprite3::GetRect(int &ax, int &ay, int &aw, int &ah)
{
	ax = x3;
	ay = y3;
	aw = width3;
	ah = height3;
}

