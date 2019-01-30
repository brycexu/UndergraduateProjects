#include <stdio.h>
#include <string.h>
#define buffer 1024 
int main(void)
{
int i;
char str1[50];
char a[buffer];
gets(a);
for(i=strlen(a)-1;i>=0;i--)
printf("%c",a[i]); 
printf("\n");
return 0;
}