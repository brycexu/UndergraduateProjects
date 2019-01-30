#include <iostream>
using namespace std;
class User
{
private:
    char name[10];
    char pass[10];
    char newname[10];
    char newpass[10];
    char comname[10];
    char compass[10];
public:
    User(char name[],char pass[])
    {
        strcpy(this->name, name);
        strcpy(this->pass, pass);
    }
    void AddUser(char newname[],char newpass[])
    {
        strcpy(this->newname, newname);
        strcpy(this->newpass, newpass);
    }
    int login(char *name,char * pass)
    {
        strcpy(comname, name);
        strcpy(compass, pass);
        if (strcmp(newname, comname)==0&&strcmp(newpass, compass)==0)
        {
            return 1;
        }
        else
        {
            return -1;
        }
    }
};

int main(){
    char name[10],name1[10],pass[10],pass1[10];
    cin>>name>>pass>>name1>>pass1;
    User user("LiWei","liwei101");
    user.AddUser(name,pass);
    if (user.login(name1,pass1) >=0)
    {
        cout<<"Success Login!"<<endl;
    }
    else{
        cout<<"Login failed!"<<endl;
    }
    return 0;
}
