#include <stdio.h>
void tran(int array[5][3],int out_array[3][5])
{
    if(array==NULL||out_array==NULL)
    {
        printf("error");
        return;
    }
    int *p;
    int i,j;
    for(i=0;i<=4;i++)
    {
        for(j=0;j<=2;j++)
        {
            out_array[j][i]=array[i][j];
        }
    }
    p=&out_array[0][0];
    for (int k=0;k<15;k++)
    {
        printf("%d ",(*p));
        p++;
    }
}
int main ()
{
    int array[5][3],out_array[3][5];
    int *p;
    p=&array[0][0];
    for(int i=0;i<15;i++)
    {
        scanf("%d",&(*p));
        p++;
    }
    tran(array,out_array);
    return 0;
}