#include<stdio.h>
void minmax(int s[])
{
	int min,max;
	int avg;
	int i;
	float sum;
	max=s[0];
    min=s[0];
	sum=0;
	for (i=0;i<10;i++)
	{
		sum=sum+s[i];
	}
	avg=sum/10;
	for (i=1;i<10;i++)
	{
		if (s[i]>max)
		{
			max=s[i];
		}
	}
	for (i=0;i<10;i++)
	{
		if (s[i]<min)
		{
			min=s[i];
		}
	}
	printf("%d,%d,%d",min,max,avg);
}
int main (void)
{
	int s[10];
	int j;
	for (j=0;j<10;j++)
	{
		scanf("%d",&s[j]);
	}
	minmax(s);
}
