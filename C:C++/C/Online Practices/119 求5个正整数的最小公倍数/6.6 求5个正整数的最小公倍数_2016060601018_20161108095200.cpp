#include<stdio.h>
#include<stdlib.h>
int find(int director, int j)
{
	int z;
	z=1;
	int i;
	if (director>j)
    {
        i=director;
    }
    else
    {
        i=j;
    }
    while (i%director!=0||i%j!=0)
    {
        i++;
    }
    z=i;
	return z;
}
int main (void)
{
	int a[5];
	int i;
	int m1,m2,m3,m4;
	for (i=0;i<5;i++)
	scanf("%d",&a[i]);
	m1=find(a[0],a[1]);
	m2=find(m1,a[2]);
	m3=find(m2,a[3]);
	m4=find(m3,a[4]);
	printf("%d",m4);
}
