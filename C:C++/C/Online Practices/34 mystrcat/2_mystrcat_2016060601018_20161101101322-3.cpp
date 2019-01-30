#include<stdio.h>
void my_strcat(char * destination,const char * source)
{
	if(destination==NULL||source==NULL)
	{
		printf("error");
		return ;
	}
	int i,j;
	j=0;i=0;
	while(*(destination+j)!='\0'&&*(destination+j)!=' ')
	{
		j++;
	}
	while(*(source+i)!=32)
	{
		*(destination+j)=*(source+i);
		j++;
		i++;
	}
	*(destination+j)=' ';
}
