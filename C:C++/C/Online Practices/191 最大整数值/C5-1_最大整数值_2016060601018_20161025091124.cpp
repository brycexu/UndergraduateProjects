#include<stdio.h>
void main ()
{
	int a[30]={0};
   int i;
   int *p;
   p=&a[0];
   for (i=1;i<4;i++)
	scanf("%d",&a[i]);
   for (i=1;i<4;i++)
   if (a[i]>*p)
   {
	   p=&a[i];
   }
   printf("%d",*p);

}
