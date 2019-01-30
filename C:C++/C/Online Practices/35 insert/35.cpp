#include <stdio.h>
#include<stdlib.h>
#include<string.h>
void insert(char * s1, char * s2, int n);
void main()
{
	char s1[100] = { "1234567 89" }, s2[10] = { "11 1" };
	insert(s1, s2, 3);
	puts(s1);
	system("pause");
}
void insert(char * s1, char * s2, int n)
{
	if (s1 == NULL || s2 == NULL||n<0)
	{
		puts("error");
		return;
	}
	char temp[50] = { 0 };
	int k = 0, len = strlen(s2);
	while (s1[n + k] != '\0')
	{
		temp[k] = s1[n + k];
		++k;
	}
	k = 0;
	for (; s2[k] != '\0'&&s2[k] != ' '; ++k)
	{
		s1[n + k] = s2[k];
	}
	for (int i = 0;temp[i]!='\0'; ++i,++k)
	{
		s1[n + k] = temp[i];
	}
	s1[n + k] = '\0';
}