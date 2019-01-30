#include <stdio.h>
int main (void)
{
    int a,b;
    scanf("%d %d",&a,&b);
    int yue,bei;
    int flag1=0;
    int flag2=0;
    if (a>b)
    {
        yue=b;
        bei=a;
    }
    else
    {
        yue=a;
        bei=b;
    }
    while (flag1!=1)
    {
    if (a%yue==0&&b%yue==0)
    {
        printf("%d,",yue);
        flag1=1;
    }
    else
    {
        yue--;
    }
    }
    while (flag2!=1)
    {
        if (bei%a==0&&bei%b==0)
        {
            printf("%d",bei);
            flag2=1;
        }
        else
        {
            bei++;
        }
    }
}