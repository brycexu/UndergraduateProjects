#include<reg52.h>
#include <intrins.h>
#include"lcd.h"
#include"temp.h"

//typedef unsigned char uchar;					//�����ض���
//typedef unsigned int uint;

sbit key_1 = P1^0;					//���尴��,1������ʱ������
sbit key_2 = P1^1;					//2��ʱ��+
sbit key_3 = P1^2;					//3��ʱ��-

sbit beep = P2^0;

sbit AD_clk = P3^4;					//����ADC0832 		 
sbit AD_cs = P3^6; 
sbit AD_do = P3^5; 
sbit AD_di = P3^5;

uchar RH;							//��������ʪ�ȱ���
uchar RH_L,RH_H;					//����ʪ��������
int tp;								//�����¶ȱ���
uchar xdata PuZh_1[16];
uchar xdata PuZh_2[16]; 

void warm();						//����
void set_limit();					//�趨������
void Read_temp();					//��ȡ�¶�
void display_1();						//��ʾ
void set_time();					//����ʱ��
void delayms(unsigned int x);		//��ʱ����
uchar AD(bit Channel);				//AD�ɼ�
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
* ������         : warm()
* ��������		 : ����
* ����           : ��
* ���         	 : ��
*******************************************************************************/
void warm()
{
	if(RH_L!=0 && RH_H!=0)					//���ú���ֵ
	{					
 		if(RH>=RH_H)				//ʪ�ȴ�������
		{
			two_data("   I am Full    ");
			display();
			beep = 1;
		}
		else if(RH<=RH_L)			//ʪ��С������
		{
			two_data("  I need water��");
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
* ������         : set_limit()
* ��������		 : �趨����ֵ
* ����           : ��
* ���         	 : ��
*******************************************************************************/
void set_limit()
{
	if(key_1 == 0)									   	//���ü�����
	{
		delayms(10);									//��ʱ����
		if(key_1 == 0)								  	//�ٴ��ж�
		{
			while(key_1 == 0);
			LcdWriteCom(0x01);						 	//����
			delayms(10);
			for(;;)	   									//�趨�¶�����
			{
				LcdWriteCom(0x83);						//��ʾ
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
				if(key_2 == 0)							//����2���£�ÿ��һ��+5
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
				if(key_3 == 0)							//����3���£�ÿ��һ��-5
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
				if(key_1 == 0) 							//����4���£�������һ��
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
			for(;;)	   									//�趨�¶�����
			{
				LcdWriteCom(0x83);						//��ʾ
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
				if(key_2 == 0)							//����2���£�ÿ��һ��+5
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
				if(key_3 == 0)							//����3���£�ÿ��һ��-5
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
				if(key_1 == 0) 							//����4���£�������һ��
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
* ������         : Read_temp()
* ��������		 : ��ȡ�¶�
* ����           : ��
* ���         	 : ��
*******************************************************************************/
void Read_temp()
{
	tp = Ds18b20ReadTemp();
	tp = tp/100;
}
/*************************************************************
* �� �� ��         : display
* ��������		   : ����������ʾʱ����Ϣ
* ��    ��         : ��
* ��    ��         : ��
*************************************************************/
void display_1()
{
	LcdWriteCom(0x80);			//�¶���ʾ
	LcdWriteData('T');
	LcdWriteData('P');
	LcdWriteData(':');		
	LcdWriteData(0x30+tp/100);
   	LcdWriteData(0x30+tp%100/10);
	LcdWriteData(0x30+tp%10);
	LcdWriteData(0xdf);
	LcdWriteData('C');	

	LcdWriteCom(0x89);			//�¶���ʾ
	LcdWriteData('R');
	LcdWriteData('H');
	LcdWriteData(' ');
	LcdWriteData(':');		
	LcdWriteData(0x30+RH/100);
   	LcdWriteData(0x30+RH%100/10);
	LcdWriteData(0x30+RH%10);	   	
}
void delayms(unsigned int x)   //0.14ms��� 0us
{
	unsigned char i;
	while(x--)
	{
		for (i = 0; i<13; i++)
		{}
	}
}
/*******************************************************************************
* ������         : uchar AD(bit Channel)
* ��������		 : �ɼ�ADֵ
* ����           : ��
* ���         	 : ��
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
	AD_clk=1;	   ////���뿪ʼ�źţ�����һ�������壩,ʱ�������أ����뿪ʼ�ź� 
		
	//��ͨ��0~10.  1~11  ˫ͨ�� 0+~00 ��0��~01
	AD_clk=0;
	AD_di=1;   //ѡ��ͨ��
	AD_clk=1;  
	_nop_(); 
	AD_clk=0; 
	AD_di=Channel;	  //ѡ��ͨ��

	//ͨ��ѡ�����
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
		ad1>>=1;		   ////�ӵ�λ���λ��ȡ��λADֵ 
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
	if(ad0 == ad1)		  //�ж��Ƿ�ɼ���ȷ
	{
		return ad1;
	}
	return -1;
}
//void one_data(uchar *str)				//��ʾ��һ������
//{
//	unsigned char y;
//	for(y=0;y<16;y++)
//	{
//		PuZh_1[y]=*str;
//		str++;
//	}
//}
void two_data(uchar *str)				//��ʾ��һ������
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

//	LcdWriteCom(0x80); //���������ڵ�һ��
//	for(i=0;i<16;i++)
//		LcdWriteData(PuZh_1[i]);	
	LcdWriteCom(0xC0); //���������ڵڶ���
	for(i=0;i<16;i++)
		LcdWriteData(PuZh_2[i]);
}

