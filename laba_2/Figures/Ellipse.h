#ifndef LABA_2_ELLIPSE_H
#define LABA_2_ELLIPSE_H
#include "BasicFigure.h"

class Ellipse : public BasicFigure {
    float a_side, b_side;

public:
    Ellipse(float x, float y, float a_side, float b_side);
    float surface_area();
};


#endif
