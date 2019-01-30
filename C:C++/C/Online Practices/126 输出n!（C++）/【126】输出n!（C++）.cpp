#include<stdio.h>
#include<stdlib.h>

void main()
{
	int n, x, s = 1;
	scanf("%d", &n);
	if (n > 12)
	{
		printf("12!=479001600");
	}
	else
	{
		for (x = 1;x <= n;x++)
		{
			s = s*x;
		}
		printf("%d!=%d", n, s);
	}
	system("pause");
}
