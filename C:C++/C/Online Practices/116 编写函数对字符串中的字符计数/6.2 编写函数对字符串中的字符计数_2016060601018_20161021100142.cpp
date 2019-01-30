#include<stdio.h>
#include<stdlib.h>
#include<string.h>
void count(char *str)
{
	int i,x,y,z,n;
	x=y=z=0;
	i=0;
	n=strlen(str);
	while (i<n)
	{
		if((str[i]>='a'&&str[i]<='z')||(str[i]>='A'&&str[i]<='Z'))
		{
			x++;
		}
		if(str[i]>='0'&&str[i]<='9')
		{
			y++;
		}
		if(str[i]==32)
		{
			z++;
		}
		i++;
	}
	printf("%d,%d,%d",x,y,z);
}
