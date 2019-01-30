#pragma once
#include"acllib.h"
class CAutoSprite3
{
public:
	CAutoSprite3();
	~CAutoSprite3();

	ACL_Image img;
	int x3, y3;
	int dx3, dy3;
	int width3, height3;
	char name[50];
	int mw3, mh3;
public:
	
	CAutoSprite3(CAutoSprite3 &);
	CAutoSprite3(const char *name, int w, int h,int mw3, int mh3);
	
	void Move();
	void drawImageScale(int w, int h);
	void drawImageScale();
	void GetRect(int &ax3, int &ay3, int &aw3, int &ah3);

};

