#include<stdio.h>
int main ()
{
	char a[100];
	int i,j;
	i=j=0;
	gets(a);
	while (a[i]!='\0')
    {
        i++;
    }
    i--;
    for (;j<=i;i--,j++)
    {
        if (a[i]!=a[j])
        break;
    }
    if (j<=i)
    {
        printf("false");
    }
    else
    {
        printf("true");
    }
 }
