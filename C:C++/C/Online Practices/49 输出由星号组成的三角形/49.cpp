#include <stdio.h>
int main()
{
int space_num,n,i,j;
while(printf("Please input the size of triangle :")) //while功能就是让你可以不断地输入
{
scanf("%d",&n); //三角形的大小
space_num=n-1; //最初第一行要输入的空格数
for(i=1;i<=n;i++)
{
for(j=1;j<=space_num;j++)
printf(" ");
for(j=1;j<=i*2-1;j++) //k行要输入k*2-1个*
printf("*"); 
printf("\n"); //每行输完回车
space_num--; //下一行的空格数要比上行少一个
}
}
return 0;
}