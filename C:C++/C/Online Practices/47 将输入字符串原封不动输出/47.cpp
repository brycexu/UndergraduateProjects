#include <stdio.h>
#include <ctype.h>
int main()
{
 int j=0,w=0,k=0,l=0,i=0,a=0;
 char str1[200]="";//�ַ���Ҫ�г�ʼ��������ϵͳĬ�ϸ�ֵ���ᵼ���жϴ���
 printf("������һ�����Ȳ�����200���ַ�����\n");
 gets(str1);
 puts(str1);
 for(i=0;str1[i]!=0;i++)//�ַ�����ʼ��ʱ��δ����ֵ��λĬ��Ϊ0���������ʱ��������0����
 {
  if(isalpha(str1[i])!=0)//��ĸ
   j++;
  else if(isdigit(str1[i])!=0)//����
   k++;
  else if(ispunct(str1[i])!=0)//���       
   l++;
  else if(isspace(str1[i])!=0)//�ո�
   w++;
 }
 printf("%d,%d,%d,%d",j,k,l,w);
 return 0;
}