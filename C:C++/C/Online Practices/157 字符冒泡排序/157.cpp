#include <stdio.h>
#include <iostream>
using namespace std;
int main()
{
    char a[5];
    gets(a);
    char temp;
    for(int j=0;j<4;j++)
    {
        for(int i=0;i<4-j;i++)
        {
            if(a[i] > a[i + 1])
            {
                temp = a[i];
                a[i] = a[i + 1];
                a[i + 1] = temp;
            }
        }
    
    }
    for(int i=0;i<4;i++)
    {
        cout<<a[i]<<",";
    }
    cout<<a[4];
}
