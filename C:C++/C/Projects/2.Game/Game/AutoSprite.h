#pragma once
#include"acllib.h"
class CAutoSprite
{
public:
	CAutoSprite();
	~CAutoSprite();

	ACL_Image img;
	int x, y;
	int dx, dy;
	int width, height;
	char name[50];
	int mw, mh;
public:
	
	CAutoSprite(CAutoSprite &);
	CAutoSprite(const char *name, int w, int h,int mw = 640, int mh = 480);
	
	void Move();
	void drawImageScale(int w, int h);
	void drawImageScale();
	void GetRect(int &ax, int &ay, int &aw, int &ah);

};

