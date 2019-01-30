#include<stdio.h>
#include<stdlib.h>

void BubbleSort(int a[], int n); 
int main()
{
	int n = 10,temp;
	int a[10], i;
	for (i = 0;i<n;i++)
	{
		scanf("%d", &a[i]);
		if (a[i] < 0)
		{
			n = i;
			break;
		}
	}
	BubbleSort(a, n);
	for (i = 0;i<n;i++)
	{
		if (a[i] % 2 == 1)
		{
			printf("%d ", a[i]);
		}
	}
	for (i = 0;i<n;i++)
	{
		if (a[i] % 2 == 0)
		{
			printf("%d ", a[i]);
		}
	}
	return 0;
}
void BubbleSort(int a[], int n)
{
	int i, j;
	int temp;
	for (i = 1;i<n;i++)
	{
		for (j = 0;j<n - i;j++)
		{
			if (a[j]>a[j + 1])
			{
				temp = a[j];
				a[j] = a[j + 1];
				a[j + 1] = temp;
			}
		}
	}
}