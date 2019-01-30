#include<stdio.h>
int main(void)
{
int fac(int n);
int a;
float b;
    scanf("%d",&a);
    b=fac(a);
    printf("%d!=%10.0f\n",a,b);
}
int fac(int n)
{float f;
if(n<0)
{printf("error!");
}
else
if(n==0||n==1)
f=1;
else
    f=fac(n-1)*n;
return(f);
}
