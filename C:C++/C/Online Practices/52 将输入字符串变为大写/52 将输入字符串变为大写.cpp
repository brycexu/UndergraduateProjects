#include <stdio.h>
void main()
{
    int i;
    char str1[20],str2[20];
    for (i=0;i!='\n';i++)
    {
        if (str1[i]<123&&str1[i]>96)
        {    
            str2[i]=str1[i]-32;
        }
        else str2[i]=str1[i];
    }
    printf("%s\n",str2);
    getchar();
}