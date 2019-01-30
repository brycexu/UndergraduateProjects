#include<stdio.h>
void  isort(int a[],int n)
{
	int i,j,temp;
	temp=0;
	for (i=1;i<n;i++)
	{
		for (j=0;j<n-i;j++)
		{
			if (a[j]<a[j+1])
			{
				temp=a[j];
				a[j]=a[j+1];
				a[j+1]=temp;
			}
		}
	}
	for (i=0;i<n-1;i++)
    {
        printf("%d,",a[i]);
    }
    printf("%d",a[i]);
}