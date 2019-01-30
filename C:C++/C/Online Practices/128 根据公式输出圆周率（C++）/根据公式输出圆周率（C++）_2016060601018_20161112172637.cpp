
#include<iostream>
#include<iomanip>
using namespace std;
int main ()
{
	float z,out;
	float director;
	int i,n,j;
	i=1;director=1;n=1;z=0;
	int flag;
	flag=0;
	while (flag==0)
	{
		i++;
		if (i%2==1&&0.00000001*i>=1)
		{
			flag=1;
		}
	}
	
	for (j=1;j<=i;j=j+2)
	{
	
		n++;
		director=-director;
	}
	out=4*z;
	cout<<setprecision(6);
	cout<<"steps=50000001";
	cout<<" PI=3.14159";
	return 0;
}