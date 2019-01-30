#include<stdio.h>
int main (void)
{
	int x,y,i,max;
	scanf("%d %d",&x,&y);
	if (x>=y)
	{
		max=x;
	}
	else
	{
		max=y;
	}
	for (i=max;;i++)
	{
		if (i%x==0&&i%y==0)
		{
			printf("%d",i);
			break;
		}
	}
	
	
}
