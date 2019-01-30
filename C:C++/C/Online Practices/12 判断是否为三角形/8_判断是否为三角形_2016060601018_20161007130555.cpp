#include<stdio.h>
#include<stdlib.h>
void main ()
{
	float x,y,z;
	scanf("%f,%f,%f\n",&x,&y,&z);
	if (x<=0||y<=0||z<=0)
	{ printf("error");}
	if (x+y<=z||x+z<=y||y+z<=x)
		printf("no");
	else
		printf("yes");

}