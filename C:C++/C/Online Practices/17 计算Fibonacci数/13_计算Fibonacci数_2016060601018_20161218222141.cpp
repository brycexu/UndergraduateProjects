#include<stdio.h>
int main(void)
{
         int n, i, x;
         int fib[100];
         scanf("%d", &n);
         fib[0] = fib[1] = 1;
         for(i = 2; i <= n; i++)
              fib[i] = fib[i -1] + fib[i - 2];
         printf("%d", fib[n - 1]);

         return 0;
}