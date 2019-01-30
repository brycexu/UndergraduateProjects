#include<stdio.h>
#include<stdlib.h>
#include<string.h>
void insert(char * s1, char * s2, int n);

int mystrlen(char *p)
{	
	int i=0;
	for(;p[i]!=' '&&p[i]!='\0';){i++;}
	return i;
}

void insert(char*s1,char *s2,int n)
{
	int i=0,temp=0;
	char s3[300];
	if(s1==NULL||s2==NULL||mystrlen(s1)<n||n<0){printf("error");return;}
	for (i = 0;i < mystrlen(s1);i++)
	{
		s3[i]=s1[i];
	}
	int len1=mystrlen(s1);//s1是原字符串，s2是子字符串
	int len2=mystrlen(s2);
	for(i=0;i<(len2);i++)
	{
		s3[n+len2+i]=s1[n+i];
		s3[n+i]=s2[i];
		temp=i;
	}
	s3[len1 + len2]=' ';
	s3[len1+len2+1]='\0';
	for(i=0;s3[i]!='\0';i++)
	{s1[i]=s3[i]; }
}