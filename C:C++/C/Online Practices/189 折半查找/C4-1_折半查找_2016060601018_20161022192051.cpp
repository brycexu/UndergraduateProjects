#include<stdio.h>
int main ()
{
	int n;
	scanf("%d",&n);
	int a[100];
	int i;
	int mid;
	int low=1;
	int high=n;
	int x;
	for (i=1;i<=n;i++)
	{
		scanf("%d,",&a[i]);
	}
	scanf("%d",&x);
	while (low<=high)
	{
		mid=(low+high)/2;
		if (x==a[mid])
		{
			break;
		}
		else if (x<a[mid])
		{
			high=mid-1;
		}
		else 
		{
			low=mid+1;
		}
	 }
	 if (x==a[mid])
	 printf("%d",mid); 
}