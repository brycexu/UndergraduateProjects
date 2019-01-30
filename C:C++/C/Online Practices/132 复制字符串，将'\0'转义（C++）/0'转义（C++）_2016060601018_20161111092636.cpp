
#include<iostream>
#include<iomanip>
using namespace std;
int main ()
{
    int i;
    int j;
    char s1[100];
    char s2[100];
    i=0;
    cin>>s1;
    while (s1[i]!='\0')
    {
       s2[i]=s1[i];
       i++;
    }
    s2[i+1]='\0';
    for (j=0;j<=i-1;j++)
    {
        cout<<s2[j];
    }
    cout<<"\\0"<<endl;
}
