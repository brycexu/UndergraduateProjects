#include <stdio.h>
int main()
{
int space_num,n,i,j;
while(printf("Please input the size of triangle :")) //while���ܾ���������Բ��ϵ�����
{
scanf("%d",&n); //�����εĴ�С
space_num=n-1; //�����һ��Ҫ����Ŀո���
for(i=1;i<=n;i++)
{
for(j=1;j<=space_num;j++)
printf(" ");
for(j=1;j<=i*2-1;j++) //k��Ҫ����k*2-1��*
printf("*"); 
printf("\n"); //ÿ������س�
space_num--; //��һ�еĿո���Ҫ��������һ��
}
}
return 0;
}