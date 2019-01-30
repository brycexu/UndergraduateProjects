#include <iostream>
using namespace std;
class Felid{
public:
    Felid(){
        cout<<"Felid constructor..."<<endl;
    }
    ~Felid(){
        cout<<"Felid destructor..."<<endl;
    }
    virtual void sound()const{
        cout<<"Felid sound!"<<endl;
    }
    static Felid* createCat();
    static Felid* createLeopard();
};

class Cat:public Felid
{
public:
    Cat():Felid()
    {
        cout<<"Cat constructor..."<<endl;
    }
    ~Cat()
    {
        cout<<"Cat destructor..."<<endl;
    }
    void sound()const
    {
        cout<<"Miaow!"<<endl;
    }
};
Felid * Felid::createCat(){return new Cat();}

class Leopard:public Felid
{
public:
    Leopard():Felid()
    {
        cout<<"Leopard constructor..."<<endl;
    }
    ~Leopard()
    {
        cout<<"Leopard destructor..."<<endl;
    }
    void sound()const
    {
        cout<<"Howl!"<<endl;
    }
};
Felid *Felid::createLeopard(){return new Leopard();}