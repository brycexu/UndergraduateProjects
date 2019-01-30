//
//  main.cpp
//  c
//
//  Created by 师全鑫 on 2016/12/28.
//  Copyright ? 2016年 师全鑫. All rights reserved.
//

#include <iostream>
#include<time.h>
using namespace std;
int RandInt(int i, int j)       //srand()放在主函数中了
{
    if(i==0)
        return rand()%(j+1);
    else
        return rand()%(j-i+1) + i;
}
float fun1(int a[], int n)
{
    int tmp;
    float s,f;
    s=clock();
    for (int i = 0; i < n; i++)
    {
        tmp=RandInt(1, n);
        for (int j = 0; j < i; j++)
        {
            if(tmp==a[j])
            {
                tmp=RandInt(1, n);
                j=-1;
            }
        }
        a[i] = tmp;
    }
    f=clock();
    return ((f-s)/CLOCKS_PER_SEC);
}
float fun2(int a[], int n)
{
    float  s,f;
    int used[100]={0};
    int tmp;
    s=clock();
    for (int i = 0; i < n; i++)
    {
        tmp=RandInt(1, n);
        while(used[tmp]!=0)
            tmp=RandInt(1, n);
        a[i]=tmp;
        used[tmp]=1;
    }
    f=clock();
    return ((f-s)/CLOCKS_PER_SEC);
}
void swap(int &a, int &b)
{
    int tmp=a;
    a=b;
    b=tmp;
}

float fun3(int a[], int n)
{
    float s,f;
    s=clock();
    for (int i = 0; i < n; i++)
    {
        a[i]=i+1;
    }
    for (int i = 1; i < n; i++)
    {
        swap(a[i], a[ RandInt(0, i) ]);
    }
    f=clock();
    return ((f-s)/CLOCKS_PER_SEC);
}
int main()
{
    srand(unsigned(time(NULL)));
    int a[100];
    int b[100];
    int c[100];
    int d;
    int e,f,g;
    cin>>d;
    if(d%1!=0||d<=0)
    {
        cout<<"error";
        return 0;
    }
    e=(int)fun1(a,d);
    f=(int)fun2(b,d);
    g=(int)fun3(c,d);
    for(int i=0;i<d;i++)
    {
        cout<<a[i]<<",";
    }
    cout<<e<<endl;
    for(int i=0;i<d;i++)
    {
        cout<<b[i]<<",";
    }
    cout<<f<<endl;
    for(int i=0;i<d;i++)
    {
        cout<<c[i]<<",";
    }
    cout<<g<<endl;
    return 0;
}