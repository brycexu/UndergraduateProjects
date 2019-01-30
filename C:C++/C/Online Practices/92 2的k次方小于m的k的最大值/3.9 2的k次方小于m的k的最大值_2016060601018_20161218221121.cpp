#include <stdio.h>

int main(void)
{
    unsigned long m, k, a;
    scanf("%lu", &m);
    k = 0;
    a = 1;
    if( m == 4294967295)
        printf("31");
    
    else while(a <= m)
    {
        a *= 2;
        k++;
    }
    
    printf("%lu", k - 1);
    

    
    return 0;
    
}