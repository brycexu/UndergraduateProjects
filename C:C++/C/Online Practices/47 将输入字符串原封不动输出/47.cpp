#include <stdio.h>
#include <ctype.h>
int main()
{
 int j=0,w=0,k=0,l=0,i=0,a=0;
 char str1[200]="";//字符串要有初始化，否则系统默认赋值，会导致判断错误
 printf("请输入一个长度不超过200的字符串：\n");
 gets(str1);
 puts(str1);
 for(i=0;str1[i]!=0;i++)//字符串初始化时，未被赋值的位默认为0，函数检测时会与数字0区分
 {
  if(isalpha(str1[i])!=0)//字母
   j++;
  else if(isdigit(str1[i])!=0)//数字
   k++;
  else if(ispunct(str1[i])!=0)//标点       
   l++;
  else if(isspace(str1[i])!=0)//空格
   w++;
 }
 printf("%d,%d,%d,%d",j,k,l,w);
 return 0;
}