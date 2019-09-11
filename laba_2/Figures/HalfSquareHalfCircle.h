#ifndef LABA_2_HALFSQUAREHALFCIRCLE_H
#define LABA_2_HALFSQUAREHALFCIRCLE_H
#include "Square.h"
#include "Circle.h"

class HalfSquareHalfCircle : public Square, public Circle {
public:
    HalfSquareHalfCircle(float x, float y, float r);
    float surface_area();
};


#endif //LABA_2_HALFSQUAREHALFCIRCLE_H
