#include<stdio.h>
struct student
{
	char name[20];
	int sex;
	int birthday;
	float height;
	int C;
	int Calculus;
};
int max(student *stu,int j,int p)
{
    stu[0].C=0;
	for (j=1;j<=p;j++)
	{
	  if (stu[j].C>stu[0].C)
	  stu[0].C=stu[j].C;
    }
    return stu[0].C;
}
int min(student *stu,int j,int p)
{
    	for (j=1;j<=p;j++)
	{   if(stu[j].C<stu[0].C)
	    stu[0].C=stu[j].C;
	}
	return stu[0].C; 	
}
int main ()
{
    int n,sum1,sum2,max1,min1,max2,min2;
	int x,y;
	x=y=0;
	sum1=sum2=max1=min1=max2=min2=0;
	scanf("%d\n",&n);
	struct student stu[100];
	stu[0].C=stu[0].Calculus=0;
	int i;
	for (i=1;i<=n;i++)
	{
		scanf("%s%d%d%f%d%d",stu[i].name,&stu[i].sex,&stu[i].birthday,&stu[i].height,&stu[i].C,&stu[i].Calculus);
	}
	for (i=1;i<=n;i++)
	{   sum1=sum1+stu[i].C;
	    sum2=sum2+stu[i].Calculus;
	}
	x=sum1/(n);
	y=sum2/(n);
	max1=max(stu,i,n);
    min1=min(stu,i,n);
	for (i=1;i<=n;i++)
	{   if(stu[i].Calculus>stu[0].Calculus)
	    stu[0].Calculus=stu[i].Calculus;
	}
	max2=stu[0].Calculus;
	for (i=1;i<=n;i++)
	{   if(stu[i].Calculus<stu[0].Calculus)
	    stu[0].Calculus=stu[i].Calculus;
	}
	min2=stu[0].Calculus;
	printf("C_average:%d\n",x);
	printf("C_max:%d\n",max1);
	for (i=1;i<=n;i++)
	{
		if (stu[i].C==max1)
			printf("%s %d %d %.2f %d %d\n",stu[i].name,stu[i].sex,stu[i].birthday,stu[i].height,stu[i].C,stu[i].Calculus);
	}
	printf("C_min:%d\n",min1);
	printf("Calculus_average:%d\n",y);
	printf("Calculus_max:%d\n",max2);
	for (i=1;i<=n;i++)
	{
		if (stu[i].Calculus==max2)
			printf("%s %d %d %.2f %d %d\n",stu[i].name,stu[i].sex,stu[i].birthday,stu[i].height,stu[i].C,stu[i].Calculus);

	}
	printf("Calculus_min:%d\n",min2);
}



