#pragma once
#include"acllib.h"
class CAutoSprite4
{
public:
	CAutoSprite4();
	~CAutoSprite4();

	ACL_Image img;
	int x4, y4;
	int dx4, dy4;
	int width4, height4;
	char name[50];
	int mw4, mh4;
public:
	
	CAutoSprite4(CAutoSprite4 &);
	CAutoSprite4(const char *name, int w, int h,int mw4, int mh4,int x4,int y4);
	
	void Move();
	void drawImageScale(int w, int h);
	void drawImageScale();
	void GetRect(int &ax4, int &ay4, int &aw4, int &ah4);

};