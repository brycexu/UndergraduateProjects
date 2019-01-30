#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#define n 50
int SubStrNum(char * str,char * substr)
{
	int b,i,j;
	b=0;
	for (i=0;i<=strlen(str);i++)
	{
		if(substr[0]==str[i])
		{
			for(j=0;j<strlen(substr);j++)
			{
				if(str[i+j]==substr[j])
					continue;
				break;
			}
			if(j==strlen(substr))
			{
				b++;
				i=i+j-1;
			}
		}
	}
	printf("match times=%d",b);
	return 0;
}
int main()
{
	int a;
	char str[n],substr[n];
	gets(str);
	gets(substr);
	SubStrNum(str,substr);

}