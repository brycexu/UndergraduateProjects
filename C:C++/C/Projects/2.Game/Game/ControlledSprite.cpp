#include<time.h>
#include "ControlledSprite.h"



ControlledSprite::ControlledSprite()
{
}


ControlledSprite::~ControlledSprite()
{
}
ControlledSprite::ControlledSprite(ControlledSprite &a)
{
	strcpy_s(name, a.name);
	loadImage(name, &img);
	x = a.x;
	y = a.y;
	dx = a.dx;
	dy = a.dy;
	tomwidth = a.tomwidth;
	tomheight = a.tomheight;
	score = 0;
	life=a.life;
}
ControlledSprite::ControlledSprite(const char *name, int w, int h,int mw,int mh)
{
	strcpy_s(this->name, name);
	loadImage(name, &img);
	tomwidth = w;
	tomheight = h;
	srand((unsigned)time(NULL));
	this->mh = mh;
	this->mw = mh;
	x = 20;
	y = 20;
	dx =30;
	dy =30;
	score = 0;
	life=8;
}

void ControlledSprite::Move(int key)
{
	switch (key)
	{
	case VK_UP:
		y -= dy;
		if (y <= 0)y = 0;
		break;
	case VK_DOWN:
		y += dy;
		if (y >= mh - tomheight)y = mh - tomheight;
		break;
	case VK_LEFT:
		x -= dx;
		if (x <= 0)x = 0;
		break;
	case VK_RIGHT:
		x += dx;
		if (x >= mw+50)x = mw+50;
		break;
	default:
		break;
	}
}
void ControlledSprite::drawImageScale(int w, int h)
{
	putImageScale(&img, x, y, w, h);
}
void ControlledSprite::drawImageScale()
{
	putImageScale(&img, x, y, tomwidth, tomheight);
}
bool ControlledSprite::collision(int ax, int ay, int awidth, int aheight)
{
	bool c = true;
	if (x < ax && x + tomwidth >ax) {
		if (y > ay && y<ay + aheight)return c;
		if (y <ay && y + tomheight >ay)return c;
	}
	else {
		if (x > ax && ax + awidth > x)
		{
			if (y > ay && y<ay + aheight)return c;
			if (y <ay && y + tomheight >ay)return c;
		}
	}
	c = false;
	return c;
}
bool ControlledSprite::collision2(int ax, int ay, int awidth, int aheight)
{
	bool c = true;
	if (x < ax && x + tomwidth >ax) {
		if (y > ay && y<ay + 15)return c;
		if (y <ay && y + tomheight >ay)return c;
	}
	else {
		if (x > ax && ax + 300 > x)
		{
			if (y > ay && y<ay + 15)return c;
			if (y <ay && y + tomheight >ay)return c;
		}
	}
	c = false;
	return c;
}
int ControlledSprite::GetScores()
{
	return score;
}
void ControlledSprite::AddScores(int s)
{
	score += s;
}
int ControlledSprite::DelLife()
{
	return life;
}
void ControlledSprite::DelLife(int s)
{
	life -= s;
}
void ControlledSprite::IncLife(int s)
{
	life+=s;
}
void ControlledSprite::Back (int x1,int y1)
{
	x=x1;
	y=y1;
}

