#ifndef LABA_2_CIRCLE_H
#define LABA_2_CIRCLE_H
#include "Ellipse.h"

class Circle : public Ellipse {
protected:
    float r;

public:
    Circle(float x, float y, float r);
};


#endif //LABA_2_CIRCLE_H
