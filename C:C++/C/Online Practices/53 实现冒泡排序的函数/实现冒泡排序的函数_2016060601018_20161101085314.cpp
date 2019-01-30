#include<stdio.h>
void  bubbleSort(int data[100],int n)
{
	int i,j,temp;
	temp=0;
	for (i=1;i<n;i++)
	{
		for (j=0;j<n-i;j++)
		{
			if (data[j]>data[j+1])
			{
				temp=data[j];
				data[j]=data[j+1];
				data[j+1]=temp;
			}
		}
	}
}

