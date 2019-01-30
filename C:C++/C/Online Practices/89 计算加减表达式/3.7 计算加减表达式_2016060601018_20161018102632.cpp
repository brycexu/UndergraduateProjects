#include<stdio.h>
#include<stdlib.h>
void main ()
{
	float z,x,m;
	z=m=0;
	int i;
	char s;
	s='a';
	scanf("%f",&x);
	z=x;
	while (s!=';')
	{ 
		scanf("%c",&s);
		if (s==';')
		{break;}
		else if (s!='+'&&s!='-'&&s!=';')
		{m=1;break;}
		else if (s=='+'||s=='-')
		{scanf("%f",&x);
		switch (s)
		{
		    case '+':z=z+x;
				break;
			case '-':z=z-x;
				break;
			
			
		}}
	}
	if (m==1)
	{
		printf("error");
	}
	else
	{
		printf("%f",z);
	}
	system("pause");
}