#include<stdio.h>
#include<stdlib.h>

void main()
{
	int i,j,changed;
	float a[20],temp;
	int n;
	scanf("%d", &n);
	if ((n!=1&&n!=2&&n!=3&&n!=4&&n!=5&&n!=6&&n!=7&&n!=8&&n!=9&&n!=10&&n!=11&&n!=12)||n==1)
	{
		printf("ERROR");
		return;
	}
	for (i = 0;i < n;i++)
	{
		scanf("%f", &a[i]);
	}
	for (i = 1;i < n;i++)
	{
		changed = 0;
		for (j = 0;j < n - i;j++)
		{
			if (a[j] > a[j + 1])
			{
				temp = a[j];
				a[j] = a[j + 1];
				a[j + 1] = temp;
				changed = 1;
			}
		}
		if (changed == 0)break;
	}
	if (n % 2 == 0)
	{
		printf("%.0f", a[n / 2-1]);
	}
	else printf("%.0f", a[(n + 1) / 2 - 1]);
}