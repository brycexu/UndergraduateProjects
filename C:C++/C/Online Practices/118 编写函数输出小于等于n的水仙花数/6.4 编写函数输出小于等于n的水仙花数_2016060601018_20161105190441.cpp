#include<stdio.h>
int find (int n)
{
	int i;
	int x,y,z,num;
	num=0;
	x=y=z=0;
	i=100;
	if (n>=1000)
	{
		n=999;
	}
	for (i=100;i<=n;i++)
	{
		x=i/100;
		y=(i-100*x)/10;
		z=(i-100*x-10*y)/1;
		if (i==x*x*x+y*y*y+z*z*z)
		{
			printf("%d,",i);
			num++;
		}
	}
	return num;
}