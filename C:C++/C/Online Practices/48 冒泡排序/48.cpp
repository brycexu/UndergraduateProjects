#include <iostream.h> 
void sort(int a[],int n) //冒泡排序法 
{ 
int temp; 
for(int i=0;i<n-1;i++) 
for(int j=i;j<n;j++) 
{ 
if(a[i]>a[j]){temp=a[i];a[i]=a[j];a[j]=temp;} 
} 
} 
void main() 
{ 
int s[10]; 
for(int i=0;i<10;i++)//输入10个数 
{ 
cin>>s[i]; 
} 
sort(s,10); //调用排序函数 
for(int j=0;j<10;j++) 
{ 
cout<<s[j]<<" "; 
} 
}