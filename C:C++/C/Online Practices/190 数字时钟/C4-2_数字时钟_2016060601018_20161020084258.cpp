#include<stdio.h>
#include<stdlib.h>
struct clock
{
	int hour;
	int minute;
	int second;
};
int main (void)
{
	struct clock time;
	scanf("%d,%d,%d",&time.hour,&time.minute,&time.second);
	if (time.hour>=0&&time.hour<24&&time.minute>=0&&time.minute<60&&time.second>=0&&time.second<60)
	{
		printf("%02d:%02d:%02d",time.hour,time.minute,time.second);
	}
	else
	{
		printf("error");
	}
}
