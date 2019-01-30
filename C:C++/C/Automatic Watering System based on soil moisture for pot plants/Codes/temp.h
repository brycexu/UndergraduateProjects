#ifndef __TEMP_H_
#define __TEMP_H_

#include<reg52.h>
//---重定义关键词---//
#ifndef uchar
#define uchar unsigned char
#endif

#ifndef uint 
#define uint unsigned int
#endif

//--定义使用的IO口--//
sbit DQ=P3^7;


//--声明全局函数--//
void delay_18B20(uint );
void Ds18b20Init();
void Ds18b20WriteByte(uchar dat);
uchar Ds18b20ReadByte();
int Ds18b20ReadTemp();		//单个18b20 读取温度程序


#endif
