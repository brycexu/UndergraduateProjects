#include<stdio.h>

void printchar(char a,int n){
for(int i=0;i<n;i++){
printf("%c",a);}
}

int main(){
printf("请输入打印字符");
char a;
scanf("%c",&a);
printf("请输入打印次数");
int n;
scanf("%d",&n);
printchar(a,n);
return 0;
}