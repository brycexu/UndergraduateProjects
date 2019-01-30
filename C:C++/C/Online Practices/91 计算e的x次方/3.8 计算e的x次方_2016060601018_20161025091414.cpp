#include<stdio.h>
#include<math.h>
int main (void)
{
	double sum,x,n,z,i,c,m;
	scanf("%lf %lf",&x,&n);
	sum=1;m=1;
	if (n>=0)
{
	for (i=1;i<=n;i++)
	{
		for (c=1;c<=i;c++)
		{
			m=m*c;
		}
		sum=sum+pow(x,i)/m;
		m=1;
	}
	z=sum;
	printf("%.6lf",z);
}
    else
{
	printf("error");
}
	
}