#include <iostream>
using namespace std;
class Shape{
public:
    Shape(){}
    ~Shape(){}
    virtual double GetArea()=0;
    virtual double GetPerimeter()=0;
    static Shape* createRectangle(double length,double width);
    static Shape* createCircle(double radius);
};

class Rectangle:public Shape
{
private:
    double length;
    double width;
public:
    Rectangle(double l,double w):Shape()
    {
        length=l;
        width=w;
    }
    double GetArea()
    {
        return length*width;
    }
    double GetPerimeter()
    {
        return 2*(length+width);
    }
};
Shape * Shape::createRectangle(double l,double w){return new Rectangle(l,w);}

class Circle:public Shape
{
private:
    double radius;
public:
    Circle(double r):Shape()
    {
        radius=r;
    }
    double GetArea()
    {
        return 3.14*radius*radius;
    }
    double GetPerimeter()
    {
        return 2*3.14*radius;
    }
};
Shape * Shape::createCircle(double r){return new Circle(r);}