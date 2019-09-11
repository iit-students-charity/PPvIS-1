#define PI 3.1415
#include <cmath>

#ifndef LABA_2_BASICFIGURE_H
#define LABA_2_BASICFIGURE_H


class BasicFigure {
protected:
    float x,y;

public:
    BasicFigure(float x, float y);
    virtual float surface_area() = 0;
};


#endif
