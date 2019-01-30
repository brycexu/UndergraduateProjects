#include<time.h>
#include"luzhang.h"



luzhang::luzhang(char *name, int w, int h,int mw2, int mh2):CAutoSprite2(name,w,h,mw2,mh2)
{
    strcpy_s(this->name, name);
	loadImage(name, &img);
	width2 = w;
	height2 = h;
	srand((unsigned)time(NULL));
	this->mh2 = mh2;
	this->mw2 = mh2;
	x2 = rand() % mw2-w;
	if ( x2<=width2)
	{
		x2=2*width2;
	}
	if (x2>=mw2-width2)
	{
		x2=2*width2;
	}
	y2 = rand() % mh2-h;
	if (y2<=height2)
	{
		y2=2*height2;
	}
	if(y2>=mh2-height2)
	{
		y2=2*height2;
	}
}

void luzhang::Move()
{
	dx=0;
	dy=0;
}