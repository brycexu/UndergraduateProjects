#include<stdio.h>

void printchar(char a,int n){
for(int i=0;i<n;i++){
printf("%c",a);}
}

int main(){
printf("�������ӡ�ַ�");
char a;
scanf("%c",&a);
printf("�������ӡ����");
int n;
scanf("%d",&n);
printchar(a,n);
return 0;
}