#ifndef __TEMP_H_
#define __TEMP_H_

#include<reg52.h>
//---�ض���ؼ���---//
#ifndef uchar
#define uchar unsigned char
#endif

#ifndef uint 
#define uint unsigned int
#endif

//--����ʹ�õ�IO��--//
sbit DQ=P3^7;


//--����ȫ�ֺ���--//
void delay_18B20(uint );
void Ds18b20Init();
void Ds18b20WriteByte(uchar dat);
uchar Ds18b20ReadByte();
int Ds18b20ReadTemp();		//����18b20 ��ȡ�¶ȳ���


#endif
