//
//  main.cpp
//  a
//
//  Created by 师全鑫 on 2016/12/28.
//  Copyright ? 2016年 师全鑫. All rights reserved.
//

#include <iostream>
int ReverseArray(int array[], int size)
{
    if(size<=0)
    {
        return 0;
    }
    if(size%2==0)
    {
        int a=size/2;
        int temp;
        for(int i=0;i<a;i++)
        {
            temp=array[i];
            
            array[i]=array[size-i-1];
            
            array[size-i-1]=temp;
        }
        return 1;
    }
    else
    {
        int a=(size-1)/2;
        int temp;
        for(int i=0;i<a;i++)
        {
            temp=array[i];
            
            array[i]=array[size-i-1];
            
            array[size-i-1]=temp;
        }
        return 1;
    }
}