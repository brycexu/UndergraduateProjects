#include <stdio.h>
#include <string.h>
void my_strcpy(char * destination,char * source){
    int i=0, j;
    if(destination==source)
    {
        return;
    }
    if(destination==NULL||source==NULL)
    {
        printf("error");
        return;
    }
    //while(destination[i] != ' '&& source[i] != '\0')
      //  i++;
    
    for(j = 0; source[j] != ' '&& source[j] != '\0'; j++,i++)
        destination[i] = source[j];
   source[i]=' ';
    
}