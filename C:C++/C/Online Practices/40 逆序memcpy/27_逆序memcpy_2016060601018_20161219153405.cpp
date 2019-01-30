#include<stdio.h>
void * reversememcpy ( void * destination, const void * source, int num )
{
    if(destination==NULL||source==NULL)
	{
		printf("error");
        return 0;
	}
    unsigned char *pdest=static_cast<unsigned char*>(destination);
    const unsigned char *psrc=static_cast<const unsigned char*>(source);
    int i,j,z;
    j=i=z=0;
    for (i=num-1;i>=0;i--)
    {
        *(pdest+j)=*(psrc+i);
        j++;
    }
    return destination;
}
