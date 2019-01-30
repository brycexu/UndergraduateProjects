#pragma once
#include"acllib.h"
#include"AutoSprite2.h"
class luzhang:public CAutoSprite2
{
private:
	int dx;
	int dy;
public:
	luzhang(char *name, int w, int h,int mw2, int mh2);
	void Move();
};