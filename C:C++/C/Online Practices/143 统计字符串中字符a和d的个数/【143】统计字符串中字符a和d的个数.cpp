#include<stdio.h>
#include<stdlib.h>

void main()
{
	int a=0, d=0, i;
	char str[100];
	char *p;
	p = str;
	gets(str);
	while (*p != '\0')
	{
		if (*p == 'a')
		{
			a++;
			p++;
		}
		else if (*p == 'd')
		{
			d++;
			p++;
		}
		else p++;
	}
	printf("a:%d,d:%d", a, d);
}