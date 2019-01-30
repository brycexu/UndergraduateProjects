#pragma once
#include"acllib.h"
class ControlledSprite
{
public:
	ControlledSprite();
	~ControlledSprite();

	ACL_Image img;
	int x, y;
	int dx, dy;
	int tomwidth, tomheight;
	char name[50];
	int mw, mh;
	int score;
	int life;
public:
	
	ControlledSprite(ControlledSprite &);
	ControlledSprite(const char *name, int w, int h,int mw = 640, int mh = 480);//构造函数
	void Move(int key);//移动函数
	void drawImageScale(int w, int h);//绘画函数
	void drawImageScale();//绘画函数
	bool collision(int ax, int ay, int aw, int ah);//碰撞函数（恶龙，心）
	bool collision2(int ax, int ay, int aw, int ah);//碰撞函数（火障碍）
	int GetScores();//获取分数函数
	void AddScores(int s);//加分函数
	int DelLife();//获取生命值函数
	void DelLife(int s);//减生命值函数
	void IncLife(int s);//加生命值函数
	void Back(int x1,int y1);//归位函数
};

