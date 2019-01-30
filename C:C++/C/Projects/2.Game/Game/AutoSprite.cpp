#include<time.h>
#include "AutoSprite.h"



CAutoSprite::CAutoSprite()
{
}


CAutoSprite::~CAutoSprite()
{
}
CAutoSprite::CAutoSprite(CAutoSprite &a)
{
	strcpy_s(name, a.name);
	loadImage(name, &img);
	x = a.x;
	y = a.y;
	dx = a.dx;
	dy = a.dy;
	width = a.width;
	height = a.height;
}
CAutoSprite::CAutoSprite(const char *name, int w, int h,int mw,int mh)
{
	strcpy_s(this->name, name);
	loadImage(name, &img);
	width = w;
	height = h;
	srand((unsigned)time(NULL));
	this->mh = mh;
	this->mw = mh;
	x = rand() % mw-w;
	dx=15;
	dy=15;
	if ( x<=width)
	{
		x=2*width;
		dx=15;
		dy=15;
	}
	if (x>=mw-2*width)
	{
		x=2*width;
		dx=-15;
		dy=15;
	}
	y = rand() % mh-h;
	if (y<=height)
	{
		y=2*height;
		dx=15;
		dy=15;
	}
	if(y>=mh-height)
	{
		y=2*height;
		dx=-15;
		dy=-15;
	}
}

void CAutoSprite::Move()
{
	x += dx;
	y += dy;
	if (x >= mw+2*width || x <= 0)dx *= -1;
	if (y >= mh-height || y <= 0)dy *= -1;
}
void CAutoSprite::drawImageScale(int w, int h)
{
	putImageScale(&img, x, y, w, h);
}
void CAutoSprite::drawImageScale()
{
	putImageScale(&img, x, y, width, height);
}
void CAutoSprite::GetRect(int &ax, int &ay, int &aw, int &ah)
{
	ax = x;
	ay = y;
	aw = width;
	ah = height;
}

