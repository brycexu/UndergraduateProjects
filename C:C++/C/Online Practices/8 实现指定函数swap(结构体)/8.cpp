//
//  main.cpp
//  c
//
//  Created by ʦȫ�� on 2016/12/28.
//  Copyright ? 2016�� ʦȫ��. All rights reserved.
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