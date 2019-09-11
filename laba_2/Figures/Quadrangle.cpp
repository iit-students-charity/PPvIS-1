#include "Quadrangle.h"

Quadrangle::Quadrangle(float x, float y, float a_side, float b_side, float c_side, float d_side) : BasicFigure(x, y){
    this->a_side = a_side;
    this->b_side = b_side;
    this->c_side = c_side;
    this->d_side = d_side;
}

Quadrangle::Quadrangle(float x, float y, float a_side, float b_side) : BasicFigure(x, y) {
    this->a_side = a_side;
    this->b_side = b_side;
}

float Quadrangle::surface_area() {
    float p = (a_side + b_side + c_side + d_side) / 2;
    return sqrt(p * (p - a_side) * (p - b_side) * (p - c_side) * (p - d_side));
}
