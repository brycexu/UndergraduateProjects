#include<stdio.h>
#include<stdlib.h>
#include<string.h>

void main()
{
	char a[100];
	int i;
	gets(a);
	i = 0;
	while (a[i] != '\0')
	{
		i++;
	}
	for (i=i-1;i >= 0;i--)
	{
		printf("%c", a[i]);
	}
	printf("\0");
}