#ifndef LABA_2_QUADRANGLE_H
#define LABA_2_QUADRANGLE_H
#include "BasicFigure.h"

class Quadrangle : BasicFigure {
protected:
    float a_side, b_side, c_side, d_side;
public:
    Quadrangle(float x, float y, float a_side, float b_side, float c_side, float d_side);
    Quadrangle(float x, float y, float a_side, float b_side);
    float surface_area();
};


#endif //LABA_2_QUADRANGLE_H
