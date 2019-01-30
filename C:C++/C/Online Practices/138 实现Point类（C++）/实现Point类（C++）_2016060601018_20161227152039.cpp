#include <iostream>
#include <cmath>
using namespace std;
class Point
{
private:
    double x;
    double y;
public:
    Point(double a,double b)
    {
        x=a;
        y=b;
    }
    double Distance(const Point &p)  //定义拷贝构造函数
    {
        x -= p.x;
        y -= p.y;
        return sqrt(x*x+y*y);
    }
};
int main(){
    double a,b,c,d;
    cin>>a>>b>>c>>d;
    Point A(a,b),B(c,d);
    cout<<A.Distance(B)<<endl;
    return 0;
}
