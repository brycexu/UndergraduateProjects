#include<reg52.h>
#include <intrins.h>
#include"lcd.h"
#include"temp.h"

//typedef unsigned char uchar;					//类型重定义
//typedef unsigned int uint;

sbit key_1 = P1^0;					//定义按键,1：进入时间设置
sbit key_2 = P1^1;					//2：时间+
sbit key_3 = P1^2;					//3：时间-

sbit beep = P2^0;

sbit AD_clk = P3^4;					//定义ADC0832 		 
sbit AD_cs = P3^6; 
sbit AD_do = P3^5; 
sbit AD_di = P3^5;

uchar RH;							//定义土壤湿度变量
uchar RH_L,RH_H;					//定义湿度上下限
int tp;								//定义温度变量
uchar xdata PuZh_1[16];
uchar xdata PuZh_2[16]; 

void warm();						//报警
void set_limit();					//设定上下限
void Read_temp();					//读取温度
void display_1();						//显示
void set_time();					//设置时间
void delayms(unsigned int x);		//延时函数
uchar AD(bit Channel);				//AD采集
//void one_data(uchar *str);
void two_data(uchar *str);
void display(void);

void main()
{
	LcdInit();
	while(1)
	{
		RH = ~AD(0);
		Read_temp();
		set_limit();
		warm();
		display_1();			
	}
}
/*******************************************************************************
* 函数名         : warm()
* 函数功能		 : 报警
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/
void warm()
{
	if(RH_L!=0 && RH_H!=0)					//设置好阈值
	{					
 		if(RH>=RH_H)				//湿度大于上限
		{
			two_data("   I am Full    ");
			display();
			beep = 1;
		}
		else if(RH<=RH_L)			//湿度小于下限
		{
			two_data("  I need water！");
			display();
			beep = 0;	
		}
		else
		{
			two_data("  I am thirsty  ");
			display();
			beep = 1;	
		}
	}	
}
/*******************************************************************************
* 函数名         : set_limit()
* 函数功能		 : 设定工作值
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/
void set_limit()
{
	if(key_1 == 0)									   	//设置键按下
	{
		delayms(10);									//延时消抖
		if(key_1 == 0)								  	//再次判断
		{
			while(key_1 == 0);
			LcdWriteCom(0x01);						 	//清屏
			delayms(10);
			for(;;)	   									//设定温度上限
			{
				LcdWriteCom(0x83);						//显示
		  		LcdWriteData('S');
				LcdWriteData('E');
				LcdWriteData('T');
				LcdWriteData('-');
				LcdWriteData('R');
				LcdWriteData('H');
				LcdWriteData(' ');
				LcdWriteData('L');
				LcdWriteCom(0xca);
		  		LcdWriteData(0x30+RH_L/100);
				LcdWriteData(0x30+RH_L%100/10);
				LcdWriteData(0x30+RH_L%10);
				if(key_2 == 0)							//按键2按下，每按一次+5
				{
					delayms(10);
					if(key_2 == 0)
					{
						while(key_2 == 0);
						RH_L+=5;
						if(RH_L>=250)
							RH_L = 250;
					}
				}
				if(key_3 == 0)							//按键3按下，每按一次-5
				{
					delayms(10);
					if(key_3 == 0)
					{
						while(key_3 == 0);
						RH_L -=5;
						if(RH_L<=0)
							RH_L = 0;
					}
				}
				if(key_1 == 0) 							//按键4按下，输入下一项
				{
					delayms(10);
					if(key_1 == 0)
					{
						while(key_1 == 0);
						LcdWriteCom(0x01);
						break;
					}
				}
			}
			for(;;)	   									//设定温度下限
			{
				LcdWriteCom(0x83);						//显示
		  		LcdWriteData('S');
				LcdWriteData('E');
				LcdWriteData('T');
				LcdWriteData('-');
				LcdWriteData('R');
				LcdWriteData('H');
				LcdWriteData(' ');
				LcdWriteData('H');
				LcdWriteCom(0xca);
		  		LcdWriteData(0x30+RH_H/100);
				LcdWriteData(0x30+RH_H%100/10);
				LcdWriteData(0x30+RH_H%10);
				if(key_2 == 0)							//按键2按下，每按一次+5
				{
					delayms(10);
					if(key_2 == 0)
					{
						while(key_2 == 0);
						RH_H+=5;
						if(RH_H>=250)
							RH_H = 250;
					}
				}
				if(key_3 == 0)							//按键3按下，每按一次-5
				{
					delayms(10);
					if(key_3 == 0)
					{
						while(key_3 == 0);
						RH_H -=5;
						if(RH_H<=0)
							RH_H = 0;
					}
				}
				if(key_1 == 0) 							//按键4按下，输入下一项
				{
					delayms(10);
					if(key_1 == 0)
					{
						while(key_1 == 0);
						LcdWriteCom(0x01);
						break;
					}
				}
			}
		}
	}	
}
/*******************************************************************************
* 函数名         : Read_temp()
* 函数功能		 : 读取温度
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/
void Read_temp()
{
	tp = Ds18b20ReadTemp();
	tp = tp/100;
}
/*************************************************************
* 函 数 名         : display
* 函数功能		   : 在主界面显示时间信息
* 输    入         : 无
* 输    出         : 无
*************************************************************/
void display_1()
{
	LcdWriteCom(0x80);			//温度显示
	LcdWriteData('T');
	LcdWriteData('P');
	LcdWriteData(':');		
	LcdWriteData(0x30+tp/100);
   	LcdWriteData(0x30+tp%100/10);
	LcdWriteData(0x30+tp%10);
	LcdWriteData(0xdf);
	LcdWriteData('C');	

	LcdWriteCom(0x89);			//温度显示
	LcdWriteData('R');
	LcdWriteData('H');
	LcdWriteData(' ');
	LcdWriteData(':');		
	LcdWriteData(0x30+RH/100);
   	LcdWriteData(0x30+RH%100/10);
	LcdWriteData(0x30+RH%10);	   	
}
void delayms(unsigned int x)   //0.14ms误差 0us
{
	unsigned char i;
	while(x--)
	{
		for (i = 0; i<13; i++)
		{}
	}
}
/*******************************************************************************
* 函数名         : uchar AD(bit Channel)
* 函数功能		 : 采集AD值
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/
uchar AD(bit Channel)
{
	unsigned char i;
	unsigned char ad0,ad1;
	ad0 = 0x00;
	ad1 = 0x00;

	AD_cs = 0;
	_nop_();
	AD_clk=0;
	_nop_();
	AD_di=1;
	_nop_();
	AD_clk=1;	   ////输入开始信号（构成一个正脉冲）,时钟上升沿，输入开始信号 
		
	//单通道0~10.  1~11  双通道 0+~00 。0—~01
	AD_clk=0;
	AD_di=1;   //选择单通道
	AD_clk=1;  
	_nop_(); 
	AD_clk=0; 
	AD_di=Channel;	  //选择通道

	//通道选择完毕
	AD_clk=1;
	_nop_();
	AD_clk=0;
	_nop_();
	AD_di=1;		

	for(i=8;i>0;i--)
	{
		AD_clk=1;
		ad0<<=1;
		AD_clk=0;
		if(AD_do)
			ad0 |= 0x01;
		else
			ad0	|= 0x00;	
	}
	for(i=8;i>0;i--)
	{	
		ad1>>=1;		   ////从低位向高位读取八位AD值 
		AD_clk=0;
		if(AD_do)
			ad1 |= 0x80;
		else
			ad1	|= 0x00;
		AD_clk=1;	
	}
	AD_cs = 1;
	AD_do = 1;
	AD_clk = 1;
	if(ad0 == ad1)		  //判断是否采集正确
	{
		return ad1;
	}
	return -1;
}
//void one_data(uchar *str)				//显示第一行数据
//{
//	unsigned char y;
//	for(y=0;y<16;y++)
//	{
//		PuZh_1[y]=*str;
//		str++;
//	}
//}
void two_data(uchar *str)				//显示第一行数据
{
	unsigned char y;
	for(y=0;y<16;y++)
	{
		PuZh_2[y]=*str;
		str++;
	}
}
void display(void)
{
	unsigned char i;

//	LcdWriteCom(0x80); //设置坐标在第一行
//	for(i=0;i<16;i++)
//		LcdWriteData(PuZh_1[i]);	
	LcdWriteCom(0xC0); //设置坐标在第二行
	for(i=0;i<16;i++)
		LcdWriteData(PuZh_2[i]);
}

