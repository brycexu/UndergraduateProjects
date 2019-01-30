#include<stdio.h>
#include<stdlib.h>
#include<string.h>
void main ()
{
	char s1[50],s2[50];
	char *p1,*p2;
	int a[50]={0},flag;
	flag=0;
	p1=&s1[0];
	p2=&s2[0];
	int i,j,n,z;
	z=0;
	gets(s1);
	gets(s2);
	n=strlen(s2);
	for (i=0;i<=50;i++)
	{
			
	        for (j=0;j<n;j++)
			{  
				if(*(p1+i+j)==*(p2+j))
				{
					flag=flag+1;
				}
			}
				if(flag==n)
				{
					z=z+1;
					a[z]=i;
					flag=0;
				}
				else
				{
					flag=0;
				}

			
	}
	if(z==0)
	{
		printf("NO");
	}
	else
	{
	printf("%dtimes,",z);
	for (j=1;j<=z;j++)
	{
		printf("%d,",a[j]);
	}
	}
	system("pause");
}
	
					
					
		


