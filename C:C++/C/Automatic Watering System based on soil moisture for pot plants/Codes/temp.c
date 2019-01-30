#include"temp.h"
/*******************************************************************************
* 函 数 名         : delay_18B20
* 函数功能		   : 延时函数
* 输    入         : 无
* 输    出         : 无
*******************************************************************************/

void delay_18B20(uint i)//延时1微秒
{
   while(i--);
}
/*******************************************************************************
* 函 数 名         : Ds18b20Init
* 函数功能		   : 初始化
* 输    入         : 无
* 输    出         : 初始化成功返回1，失败返回0
*******************************************************************************/

void Ds18b20Init()/*ds1820复位*/
{   
	uchar x=0;
	DQ = 1;          //DQ复位
	delay_18B20(4); //延时
	DQ = 0;          //DQ拉低
	delay_18B20(100); //精确延时大于480us
	DQ = 1;          //拉高
	delay_18B20(40); 
}


/*******************************************************************************
* 函 数 名         : Ds18b20WriteByte
* 函数功能		   : 向18B20写入一个字节
* 输    入         : com
* 输    出         : 无
*******************************************************************************/

void Ds18b20WriteByte(uchar dat)/*写数据*/
{        
	uchar i=0;
	for (i=0; i<8; i++)
	{
		DQ = 0;
		DQ = dat&0x01;
		delay_18B20(10);
		DQ = 1;
		dat>>=1;
	}
}
/*******************************************************************************
* 函 数 名         : Ds18b20ReadByte
* 函数功能		   : 读取一个字节
* 输    入         : com
* 输    出         : 无
*******************************************************************************/


uchar Ds18b20ReadByte()/*读数据*/
{ 
	uchar i=0;
	uchar dat = 0;
	for (i=0;i<8;i++)
	{   
		DQ = 0; //给脉冲信号
		dat>>=1;
		DQ = 1; //给脉冲信号
		if(DQ)
		dat|=0x80;
		delay_18B20(10);
	}
	return(dat);
}
/*******************************************************************************
* 函 数 名         : Ds18b20ReadTemp
* 函数功能		   : 读取温度
* 输    入         : com
* 输    出         : 无
*******************************************************************************/

int Ds18b20ReadTemp()
{
	int temp = 0;
	uchar tmh, tml;
	Ds18b20Init();
	delay_18B20(1);
	Ds18b20WriteByte(0xcc);		//跳过ROM操作命令		 
	Ds18b20WriteByte(0x44);	    //温度转换命令

	Ds18b20Init();
	delay_18B20(1);
	Ds18b20WriteByte(0xcc);	 //跳过ROM操作命令
	Ds18b20WriteByte(0xbe);	 //发送读取温度命令

	tml = Ds18b20ReadByte();		//读取温度值共16位，先读低字节
	tmh = Ds18b20ReadByte();		//再读高字节
	temp = tmh;
	temp <<= 8;
	temp |= tml;
   	temp = temp*0.0625*100+0.5;
//	delay_18B20();
	return temp;
}


