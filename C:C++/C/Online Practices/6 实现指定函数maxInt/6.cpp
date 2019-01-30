#include<stdio.h>
void maxInt(int * array,int n,int * result)
{
    if (n<=0||array==NULL)
    {
        printf("error");
        return;
    }
    *result=array[0];
    int i=0;
    for (i=0;i<n;i++)
    {
        if (array[i]>*result)
        {
            *result=array[i];
        }
    }
}
