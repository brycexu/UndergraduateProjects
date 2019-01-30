#include"stdio.h" 
#include"string.h" 
#include"stdlib.h"
void del(char* str) 
{  
	int i=0; 
	int j=0;
	int n=0;
	char str2[100]={0};
    n=strlen(str);
	while(j<n)
	{   
	   if(('a'<=str[j]&&str[j]<='z')||('A'<=str[j]&&str[j]<='Z')||('0'<=str[j]&&str[j]<='9'))   
	   {    
		   str2[i]=str[j];    j++;    i++;    
	   }  
	else
	{   
		if(str[j]==str[j+1])      {j++;} 
		else
		{
           str2[i]=str[j];    j++;    i++;  
		}
	   }
	}
    n=strlen(str2);
	strcpy(str,str2);
	str[n+1]='0';
	
}