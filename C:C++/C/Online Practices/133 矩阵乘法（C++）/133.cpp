
#include <iostream>
#include<stdio.h>
using namespace std;
void Matrix_Mul(int a[3][2], int b[2][4])
{
    int c[3][4];
    for(int i=0;i<3;i++)
    {
        for(int j=0;j<4;j++)
        {
            c[i][j]=0;
            for(int k=0;k<2;k++)
            {
                c[i][j]=c[i][j]+a[i][k]*b[k][j];
            }
        }
    }
    for(int i=0;i<3;i++)
    {
        for(int j=0;j<4;j++)
        {
            cout<<c[i][j]<<" ";
        }
        cout<<endl;
    }
}