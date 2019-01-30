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
	ControlledSprite(const char *name, int w, int h,int mw = 640, int mh = 480);//���캯��
	void Move(int key);//�ƶ�����
	void drawImageScale(int w, int h);//�滭����
	void drawImageScale();//�滭����
	bool collision(int ax, int ay, int aw, int ah);//��ײ�������������ģ�
	bool collision2(int ax, int ay, int aw, int ah);//��ײ���������ϰ���
	int GetScores();//��ȡ��������
	void AddScores(int s);//�ӷֺ���
	int DelLife();//��ȡ����ֵ����
	void DelLife(int s);//������ֵ����
	void IncLife(int s);//������ֵ����
	void Back(int x1,int y1);//��λ����
};

