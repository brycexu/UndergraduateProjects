#include <stdio.h>
main()
{
 long i,a=1,b=3;
 double p=1,t=1,t1=0;
 while(t-t1>=1e-8)
 {
  t1=t;
  t*=a/b;
  p+=t;
  a++;
  b+=2;
 }
 printf("Pi=%lf\n",p);
 system ("pause");
}