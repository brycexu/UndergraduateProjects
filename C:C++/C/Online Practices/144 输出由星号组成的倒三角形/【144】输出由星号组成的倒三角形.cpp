#include<stdio.h>
#include<stdlib.h>

int main(void)
{
	int n, i, j,a,b;
	scanf("%d", &n);
	if (n % 2 == 0 || n > 80)
	{
		printf("error");
	}
	else
	{
		for (i = 1;i <= (n + 1) / 2;i++)
		{
			for (a = 1;a <= i - 1;a++)
			{
				printf(" ");
			}
			for (j = 1;j <= (n + 2 - 2*i);j++)
			{
				printf("*");
			}
			for (b = 1;b <= i - 1;b++)
			{
				printf(" ");
			}
			printf("\n");
		}
	}
}
