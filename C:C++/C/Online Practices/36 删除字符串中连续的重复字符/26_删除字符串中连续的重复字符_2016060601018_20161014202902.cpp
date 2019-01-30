#include<stdio.h>
#include<stdlib.h>
void main ()
{
   char s1[100];
   char *p;
   int i=0;
   p=&s1[0];
   scanf("%s",s1);
   for (i=0;i<49;i++)
   {
	   if ((*(p+i)>='A'&&*(p+i)<='Z')||(*(p+i)>='a'&&*(p+i)<='z')||(*(p+i)>='0'&&*(p+i)<='9'))
	  { 
	   printf("%c",*(p+i));
	   
	   }
	   else if(*(p+i)!=*(p+i+1))
	   {
	   printf("%c",*(p+i));
	   
	   }
	   
   }
   system("pause");



}