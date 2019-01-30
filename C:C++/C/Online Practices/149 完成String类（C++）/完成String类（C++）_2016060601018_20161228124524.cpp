#include <iostream>
#include <sstream>
#include "string.h"
using namespace std;
class String{
private:
    char *mystr;    //×Ö·û´®
    int len;    //×Ö·û´®³¤¶È
public:
    String(){
        len =0;
        mystr =NULL;
    }
    String(const char* p){
        len = strlen(p);
        mystr = new char[len+1];
        strcpy(mystr,p);
    }
    String(String &s){
        len = s.len;
        if (len !=0)
        {
            mystr = new char[len+1];
            strcpy(mystr,s.mystr);
        }
    }
    ~String(){
        if (mystr != NULL)
        {
            delete []mystr;
            mystr =NULL;
            len = 0;
        }
    }
    
    char *GetStr(){return mystr;}
    void ShowStr(){cout<<mystr;}
    
    bool IsSubstring(const char *str);
    bool IsSubstring(const String &str);
    int str2num();
    void toUppercase();
};

bool String::IsSubstring(const char *str)
{
    int i,j;
    for (i =0;i<len;i++)
    {
        int k = i;
        for (j =0;str[j] !='\0';j++,k++)
        {
            if (str[j]!= mystr[k]) break;
        }
        if(str[j] =='\0') return true;
    }
    return false;
}
bool String::IsSubstring(const String &str)
{
    if (!strstr(mystr, str.mystr))
    {
        return true;
    }
    else
    {
        return false;
    }
}

int String::str2num()
{
    int i=0;
    int j=0;
    for (i=0;i<len;i++)
    {
        if (mystr[i]>='0'&&mystr[i]<='9')
        {
            j=10*j+mystr[i];
        }
    }
    return j;
}

void String::toUppercase()
{
    int i;
    for (i=0;i<=len;i++)
    {
        if(mystr[i]>='a'&&mystr[i]<='z')
            mystr[i]=mystr[i]-'a'+'A';
    }
}
