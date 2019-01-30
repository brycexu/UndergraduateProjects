#include<time.h>
#include "AutoSprite4.h"



CAutoSprite4::CAutoSprite4()
{
}


CAutoSprite4::~CAutoSprite4()
{
}
CAutoSprite4::CAutoSprite4(CAutoSprite4 &a)
{
	strcpy_s(name, a.name);
	loadImage(name, &img);
	x4 = a.x4;
	y4 = a.y4;
	dx4 = a.dx4;
	dy4 = a.dy4;
	width4 = a.width4;
	height4 = a.height4;
}
CAutoSprite4::CAutoSprite4(const char *name, int w, int h,int mw4,int mh4,int x4,int y4)
{
	this->x4=x4;
	this->y4=y4;
	strcpy_s(this->name, name);
	loadImage(name, &img);
	width4 = w;
	height4 = h;
	srand((unsigned)time(NULL));
	this->mh4 = mh4;
	this->mw4 = mh4;
	x4 = rand() % mw4-w;
	y4 = rand() % mh4-h;
}
void CAutoSprite4::Move()
{
	dx4=0;
	dy4=0;
	x4+=dx4;
	y4+=dy4;
}
void CAutoSprite4::drawImageScale(int w, int h)
{
	putImageScale(&img, x4, y4, w, h);
}
void CAutoSprite4::drawImageScale()
{
	putImageScale(&img, x4, y4,width4,height4);
}
void CAutoSprite4::GetRect(int &ax, int &ay, int &aw, int &ah)
{
	ax = x4;
	ay = y4;
	aw = width4;
	ah = height4;
}