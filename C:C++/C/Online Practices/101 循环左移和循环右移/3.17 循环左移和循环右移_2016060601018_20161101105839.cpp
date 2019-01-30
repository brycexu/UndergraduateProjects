#include<stdio.h>
int main (void)
{
    int i,j,temp;
    scanf("%d %d",&i,&j);
    unsigned int z;
    if (j>0)
    {
        z=i;
        temp=z>>(32-j);
        z=z<<j;
        z=z|temp;
        printf("%d",z);
    }
    else
    {

        z=i;
        temp=z>>-j;
        z=z<<(32+j);
        z=z|temp;
        i=z;
        printf("%d",z);
    }

}
