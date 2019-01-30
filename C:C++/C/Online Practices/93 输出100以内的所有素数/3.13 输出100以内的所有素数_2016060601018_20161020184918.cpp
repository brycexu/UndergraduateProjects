#include<stdio.h>
int main (void)
 {
 	int n,i,z;
 	n=2;
 	for (n=2;n<=100;n++)
 	{
 		for (i=n-1;i>=1;i--)
 		{
 			if(n%i==0)
 			{
 				z=i;
 				break;
			 }
	     }
		 if(z==1)
		 {
		 	printf("%d,",n);
		 }
	 }
 }