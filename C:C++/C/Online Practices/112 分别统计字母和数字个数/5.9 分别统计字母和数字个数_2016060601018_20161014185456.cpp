#include<stdio.h>
#include<stdlib.h>
int main (void)
{
	char ch;
	int ch_num,dig_num;
	ch_num=dig_num=0;
	do
	{
		scanf("%c",&ch);
		if ((ch>='A')&&(ch<='Z')||(ch>='a')&&(ch<='z'))
			ch_num++;
		else if ((ch>='0')&&(ch<='9'))
			dig_num++;
	}
	while (ch!='\n');
	printf("letters:%d,digits:%d\n",ch_num,dig_num);
}
