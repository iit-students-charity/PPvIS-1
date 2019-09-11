#ifndef LABA_2_RECTANGLE_H
#define LABA_2_RECTANGLE_H
#include "Quadrangle.h"

class Rectangle : Quadrangle {
public:
    Rectangle(float x, float y, float a_side, float b_side);
    float surface_area();
};


#endif //LABA_2_RECTANGLE_H
