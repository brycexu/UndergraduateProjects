#include <stdio.h>
#include<math.h>

int main(void)
{
    int number;
    int i = 2;
    int a = 0;
    int b = 1;
    
    scanf("%d", &number);
    a = sqrt((double)number);
    for(i = 2; i <= a; i++)
    {
        if(number % i == 0)
        {
            b = 0;
            break;
        }
    }
    if (b == 0)
        printf("no\n");
    else
        printf("yes\n");
    
    return 0;
}
