#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main (void)
{
	char s1[256],s2[256];
	int z;
	gets(s1);
	gets(s2);
	z=strcmp(s1,s2);
	if (z==0)
    {
        printf("equal");
    }
	else
    {
        printf("unequal");
    }
	system("pause");
}
