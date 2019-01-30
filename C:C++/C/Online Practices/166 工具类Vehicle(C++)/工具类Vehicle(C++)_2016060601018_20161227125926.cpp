#include <iostream>
using namespace std;
class Vehicle{
public:
    Vehicle(){
        cout<<"Vehicle constructor..."<<endl;
    }
    ~Vehicle(){
        cout<<"Vehicle destructor..."<<endl;
    }
    virtual void display() const =0;
    static Vehicle * createCar();
    static Vehicle * createTruck();
    static Vehicle * createBoat();
};

class Car:public Vehicle
{
public:
    Car():Vehicle()
    {
        cout<<"Car constructor..."<<endl;
    }
    ~Car()
    {
        cout<<"Car destructor..."<<endl;
    }
    virtual void display() const
    {
        cout<<"This is a car!"<<endl;
    }
};
Vehicle * Vehicle::createCar(){return new Car();}

class Truck:public Vehicle
{
public:
    Truck():Vehicle()
    {
        cout<<"Truck constructor..."<<endl;
    }
    ~Truck()
    {
        cout<<"Truck destructor..."<<endl;
    }
    virtual void display() const
    {
        cout<<"This is a truck!"<<endl;
    }
};
Vehicle * Vehicle::createTruck(){return new Truck();}

class Boat:public Vehicle
{
public:
    Boat():Vehicle()
    {
        cout<<"Boat constructor..."<<endl;
    }
    ~Boat()
    {
        cout<<"Boat destructor..."<<endl;
    }
    virtual void display() const
    {
        cout<<"This is a boat!"<<endl;
    }
};
Vehicle * Vehicle::createBoat(){return new Boat();}