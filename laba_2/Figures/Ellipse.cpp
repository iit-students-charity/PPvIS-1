#include "Ellipse.h"
#include "BasicFigure.h"

Ellipse::Ellipse(float x, float y, float a_side, float b_side) : BasicFigure(x, y){
    this->a_side = a_side;
    this->b_side = b_side;
}

float Ellipse::surface_area() {
    return a_side * b_side * PI;
}
