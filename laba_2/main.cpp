#include <iostream>

class BasicObject {
public:
    float x = 0, y = 0;

    virtual float area() = 0;
};

class Point : BasicObject {
public:
    Point(float x, float y) {
        this->x = x;
        this->y = y;
    }
};

class Ellipse : public BasicObject {
public:
    Ellipse(float x, float y ) {
        this->x = x;
        this->y = y;
    }
};

class Circle : public Ellipse {
public:
    float radius;
    Circle(float x, float y, float r1) : Ellipse(x,y){
        this->radius = r1;
    }
};

class Quadrangle {

};

class Rectangle {

};

class Squre {

};

int main() {
    
    return 0;
}