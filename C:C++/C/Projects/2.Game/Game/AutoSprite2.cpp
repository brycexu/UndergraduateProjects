#include<time.h>
#include "AutoSprite2.h"



CAutoSprite2::CAutoSprite2()
{
}


CAutoSprite2::~CAutoSprite2()
{
}
CAutoSprite2::CAutoSprite2(CAutoSprite2 &a)
{
	strcpy_s(name, a.name);
	loadImage(name, &img);
	x2 = a.x2;
	y2 = a.y2;
	dx2 = a.dx2;
	dy2 = a.dy2;
	width2 = a.width2;
	height2 = a.height2;
}
CAutoSprite2::CAutoSprite2(char *name, int w, int h,int mw2,int mh2)
{
	int init=0;
	strcpy_s(this->name, name);
	loadImage(name, &img);
	width2 = w;
	height2 = h;
	srand((unsigned)time(NULL));
	this->mh2 = mh2;
	this->mw2 = mh2;
	x2 = 300;
	y2 = 300;
	Changespeed(init);
}
void CAutoSprite2::Changespeed(int s)
{
	int x,y;
	x=s/10;
	y=s/10;
	if (dx2>=0)
	{dx2=5+5*x;}
	else
	{dx2=-5-5*x;}
	if (dy2>=0)
	{dy2=5+5*y;}
	else
	{dy2=-5-5*y;}
}
void CAutoSprite2::Move()
{
	x2 += dx2;
	y2 += dy2;
	if (x2 >= mw2+width2 || x2 <= 0)dx2 *= -1;
	if (y2 >= mh2-2*height2 || y2 <= 0)dy2 *= -1;
}
void CAutoSprite2::drawImageScale(int w, int h)
{
	putImageScale(&img, x2, y2, w, h);
}
void CAutoSprite2::drawImageScale()
{
	putImageScale(&img, x2, y2,width2,height2);
}
void CAutoSprite2::GetRect(int &ax, int &ay, int &aw, int &ah)
{
	ax = x2;
	ay = y2;
	aw = width2;
	ah = height2;
}
void CAutoSprite2::Backspeed(int dx,int dy)
{
	dx2=dx;
	dy2=dy;
}
void CAutoSprite2::BackDragon(int x,int y)
{
	x2=x;
	y2=y;
}


