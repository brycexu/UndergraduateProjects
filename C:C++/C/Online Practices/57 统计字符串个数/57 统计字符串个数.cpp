#include<stdio.h>
int CalString(char *str)
{
    int num=0;
    while (*str!='\0')
    {
        if ((*str>='0'&&*str<='9')||(*str>='a'&&*str<='z')||(*str>='A'&&*str<='Z'))
        {
            str++;
        }
        else
        {
            num++;
            str++;
        }
    }
    return num;
}

int main()
{
    char str[50]={0};
    gets(str);
    int num;
    num=CalString(str);
    printf("%d",num);
}
