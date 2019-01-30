#include<stdio.h>
#include<stdlib.h>

void main()
{
	int year, month, day;
	scanf("%d", &year);
	scanf("%d", &month);
	if (month > 12)
	{
		month = month % 12;
	}
	if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
	{
		day = 31;
		printf("days:%d", day);
	}
	else if (month == 4 || month == 6 || month == 9 || month == 11)
	{
		day = 30;
		printf("days:%d", day);
	}
	else if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))
	{
		day = 29;
		printf("days:%d", day);
	}
	else
	{
		day = 28;
		printf("days:%d", day);
	}
}