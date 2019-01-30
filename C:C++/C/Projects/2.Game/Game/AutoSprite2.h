#pragma once
#include"acllib.h"
class CAutoSprite2
{
public:
	CAutoSprite2();
	~CAutoSprite2();

	ACL_Image img;
	int x2, y2;
	int dx2, dy2;
	int width2, height2;
	char name[50];
	int mw2, mh2;
	int numbers;
public:
	
	CAutoSprite2(CAutoSprite2 &);
	CAutoSprite2(char *name, int w, int h,int mw2, int mh2);
	
	void Move();
	void drawImageScale(int w, int h);
	void drawImageScale();
	void GetRect(int &ax2, int &ay2, int &aw2, int &ah2);
	void Changespeed(int s);
	void Backspeed(int dx,int dy);
	void BackDragon(int x,int y);

};

