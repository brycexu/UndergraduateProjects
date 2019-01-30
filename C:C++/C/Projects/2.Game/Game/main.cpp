#include"acllib.h"
#include"AutoSprite.h"
#include"ControlledSprite.h"
#include"AutoSprite2.h"
#include"AutoSprite3.h"
#include"AutoSprite4.h"
#include<string>
#include<windows.h>
const int mWindowWidth = 640, mWindowHeight = 480;
const int maxNum = 10;
const int width = 50, height = 50;
const int width2=100,height2=100;
const int zhanshiwidth=100,zhanshiheight=100;
const int maxNum2 = 2;
const int maxNum3=3;
int numxin=0;
int num = 0;
const int intervalMove = 50, intervalSprites = 500;
const char *name = "woniu.jpg";
const char *lionname ="dragon.jpg";
const char *xinname="1-fish.jpg";
const char *diciname="huo.jpg";
CAutoSprite2 *sprites2[5]={0};
CAutoSprite *sprites[maxNum] = { 0 };
CAutoSprite3 *sprites3[maxNum3]={0};
CAutoSprite4 *sprites4[3]={0};
ControlledSprite *usrSprite = NULL;
void timerEvent(int id);
void KeyEvent(int key, int event);
void KeyEvent2(int key,int event);
void paint();
void paint2();
void paint3();
void paint5();
ACL_Sound sound;
int ax, ay, aw, ah;
int ax2,ay2,aw2,ah2;
int num2=maxNum;
int num3=maxNum3;
int numbers=0;
int start(int key);
int j=0;
ACL_Image img;
int kunnan=0;
int putong=0;
int jieshu=0;
void end(int key);
int wuguan=0;
int scores=0;


int Setup()
{
	initWindow("sprites game", 0, 0, mWindowWidth, mWindowHeight);//窗口初始化
	registerTimerEvent(timerEvent);//时间事件函数
	registerKeyboardEvent(KeyEvent);//键盘事件函数
	sprites4[0]= new CAutoSprite4(diciname,width,height,mWindowWidth,mWindowHeight,150,80);//创建3个火障碍
	sprites4[1]= new CAutoSprite4(diciname,width,height,mWindowWidth,mWindowHeight,50,440);
	sprites4[2]= new CAutoSprite4(diciname,width,height,mWindowWidth,mWindowHeight,300,220);
	sprites2[0]= new CAutoSprite2("dragon.jpg",width,height,mWindowWidth,mWindowHeight);//创建一个恶龙对象
	usrSprite = new ControlledSprite("youxia.jpg", zhanshiwidth, zhanshiheight, mWindowWidth, mWindowHeight);//创建一个战士操作对象
	loadSound("getscore.wav", &sound);
	startTimer(0, 500);//蜗牛的生成
	startTimer(1, 50);//所有对象的移动
	startTimer(2, 10000);//红心的生成
	paint();
	return 0;
}
int start(int key)
{
    switch (key)
	{
	case VK_UP:usrSprite->IncLife(1);jieshu=0;return 1;
	case VK_RETURN:usrSprite->IncLife(-1);putong=1;jieshu=0;return 1;
    case VK_DOWN:usrSprite->IncLife(-3);kunnan=1;jieshu=0;return 1;
	default: return 0;
	}
}
void end(int key)
{
    scores=usrSprite->GetScores();
	switch (key)
	{
	case VK_SPACE:usrSprite->IncLife(8);j=0;numbers=0;kunnan=putong=0;usrSprite->AddScores(-scores);break;
	default:wuguan=0;break;
	}
}
void KeyEvent(int key, int event)
{
	int i;
	if (event != KEY_DOWN)return;
	usrSprite->Move(key);
	if (j==0)
	{
	j=start (key);
	}
	if (jieshu==1)
	{
       end(key);
	}
	for (i = 0;i < num;++i)
	{
		if (sprites[i] == NULL)continue;
		sprites[i]->GetRect(ax, ay, aw, ah);
		if (usrSprite->collision(ax,ay,aw,ah) == true)
		{
			delete sprites[i];
			sprites[i] = NULL;
			playSound(sound, 0);
			usrSprite->AddScores(1);
			num2=num2-1;
			numbers=numbers+1;
			if (numbers%10==0&&numbers<=50)
			{sprites2[0]->Changespeed(numbers);}
		}
	}
	for (i = 0;i <numxin;++i)
	{
		if (sprites3[i] == NULL)continue;
		sprites3[i]->GetRect(ax, ay, aw, ah);
		if (usrSprite->collision(ax,ay,aw,ah) == true)
		{
			delete sprites3[i];
			sprites3[i] = NULL;
			playSound(sound, 0);
			usrSprite->IncLife(1);
			num3=num3-1;
		}
	}
		sprites2[0]->GetRect(ax,ay,aw,ah);
		if (usrSprite->collision(ax,ay,aw,ah)==true)
		{
			usrSprite->DelLife(1);
		}
		if (putong==1&&kunnan==0)
		{
			sprites4[2]->GetRect(ax,ay,aw,ah);
		if (usrSprite->collision2(ax,ay,aw,ah)==true)
		{
			usrSprite->DelLife(1);
		}
		}
		if (kunnan==1&&putong==0)
		{
		sprites4[0]->GetRect(ax,ay,aw,ah);
		if (usrSprite->collision2(ax,ay,aw,ah)==true)
		{
			usrSprite->DelLife(1);
		}
        sprites4[1]->GetRect(ax,ay,aw,ah);
		if (usrSprite->collision2(ax,ay,aw,ah)==true)
		{
			usrSprite->DelLife(1);
		}
        sprites4[2]->GetRect(ax,ay,aw,ah);
		if (usrSprite->collision2(ax,ay,aw,ah)==true)
		{
			usrSprite->DelLife(1);
		}
		}
		paint();
}
void timerEvent(int id)
{
	if (j==1)
{
	int i;
	switch (id)
	{
	case 0:
		{if (num2==0)
	{
		num=0;
		num2=maxNum;
	}
		if (num < maxNum)
		{
			sprites[num] = new CAutoSprite(name,width,height,mWindowWidth,mWindowHeight);
			++num;
		}
		break;
		}
	case 1:
		for (i = 0;i < num;++i)
		{
			if(sprites[i])
				sprites[i]->Move();
		}
		sprites2[0]->Move();
		sprites4[0]->Move();
		sprites4[1]->Move();
		sprites4[2]->Move();
        for (i = 0;i < numxin;++i)
		{
			if(sprites3[i])
				sprites3[i]->Move();
		}
		break;
	case 2:
		{if (num3==0)
		{
			numxin=0;
			num3=maxNum3;
		}
		if (numxin < maxNum3)
		{
			sprites3[numxin] = new CAutoSprite3(xinname,width,height,mWindowWidth,mWindowHeight);
			++numxin;
		}
		break;
		}
	}

	paint();
	}
}
void paint()
{
	char s[20]={0};
	char s2[20]={0};
	char s3[100]={0};
	char s4[50]={0};
	char s5[100]={0};
	char s6[100]={0};
	char s7[100]={0};
	char s8[100]={0};
	char s9[100]={0};
	int i;
	beginPaint();
	clearDevice();
	setPenColor(BLACK);
	setBrushColor(WHITE);
    if (j==0)
	{
	  loadImage("banner.jpg",&img);
	  putImageScale(&img,0,0,400,200);
	  loadImage("maoxiandao.jpg",&img);
      putImageScale(&img,0,200,300,280);
	  setTextSize(30);
	  sprintf_s(s6,"请选择游戏难度！");
	  paintText(330,250,s6);
	  sprintf_s(s7,"简单：up键");
      paintText(330,300,s7);
	  sprintf_s(s8,"中等：回车键");
	  paintText(330,350,s8);
	  sprintf_s(s9,"困难：down键");
	  paintText(330,400,s9);
	}
	if (j==1)
	{
		setTextSize(12);
		loadImage("beijing.jpg",&img);
	    putImageScale(&img,0,0,640,480);
		for (i = 0;i < num;++i)
	{
		if (sprites[i])
		{
			sprites[i]->drawImageScale();
		}
	}
	for (i = 0;i < numxin;++i)
	{
		if (sprites3[i])
		{
			sprites3[i]->drawImageScale(30,30);
		}
	}
	sprites2[0]->drawImageScale(100,100);
	if (kunnan==1&&putong==0)
	{
	sprites4[0]->drawImageScale(300,15);
	sprites4[1]->drawImageScale(300,15);
	sprites4[2]->drawImageScale(300,15);
	}
	if (putong==1&&kunnan==0)
	{
    sprites4[2]->drawImageScale(300,15);
	}
	usrSprite->drawImageScale();
	setTextColor(BLACK);
	sprintf_s(s, "score:%d", usrSprite->GetScores());
	paintText(20, 20, s);
	sprintf_s(s2,"life:%d",usrSprite->DelLife());
	paintText(100,20,s2);
	sprintf_s(s3,"规则：干掉蜗牛得1分，碰BOSS持续掉血，碰火持续掉血，吃红心补1血");
	paintText(200,20,s3);
	sprintf_s(s4,"注意：1.蜗牛10个一次循环 2.红心有限");
	paintText(200,40,s4);
	sprintf_s(s5,"3.一轮过后BOSS速度会加快，当50分时进入暴走速度，不再改变");
	paintText(240,60,s5);
	
	if (usrSprite->DelLife()<=0)
	{
        clearDevice();
		paint2();
		//MessageBox(NULL,TEXT("Game over!"),TEXT("ERROR!"),MB_OK|MB_ICONINFORMATION);
		//PostQuitMessage(0);
        jieshu=1;
		usrSprite->Back(20,20);
		numbers=0;
		sprites2[0]->Backspeed(5,5);
		sprites2[0]->BackDragon(300,300);
		for (i = 0;i < num;++i)
		{
           if (sprites[i]!=NULL)
		   {
             delete sprites[i];
			 sprites[i] = NULL;
		   }
		   num2=0;
		}
	}
	}
	endPaint();
}
void paint2()
{
	char s3[20]={0};
	char s4[20]={0};
	char s5[100]={0};
	char s6[100]={0};
    loadImage("mogu.jpg",&img);
	putImageScale(&img,0,0,300,170);
	loadImage("final.jpg",&img);
	putImageScale(&img,340,310,300,170);
	sprintf_s(s3,"Game Over!");
	setTextSize(40);
	paintText(175,190,s3);
	sprintf_s(s4,"Your Scores:%d",usrSprite->GetScores());
	paintText(170,230,s4);
	sprintf_s(s5,"按下空格");
	paintText(40,300,s5);
	sprintf_s(s6,"回到开始界面！");
	paintText(40,350,s6);
}

