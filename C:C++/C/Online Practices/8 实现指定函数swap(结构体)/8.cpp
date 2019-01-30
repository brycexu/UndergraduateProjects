//
//  main.cpp
//  c
//
//  Created by 师全鑫 on 2016/12/28.
//  Copyright ? 2016年 师全鑫. All rights reserved.
//

#include <iostream>
using namespace std;
struct Person{
    int age;
    int height;
};
void swap(Person * array,int n)
{
    struct Person temp1;
    if (array==NULL||n<=1)
    {
        cout<<"error";
    }
    temp1.height=array->height;
    array->height=(array+n-1)->height;
    (array+n-1)->height=temp1.height;
}