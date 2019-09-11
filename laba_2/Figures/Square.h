#ifndef LABA_2_SQUARE_H
#define LABA_2_SQUARE_H
#include "Rectangle.h"

class Square : Rectangle {
public:
    Square(float x, float y, float a_side);
    float surface_area();
};


#endif //LABA_2_SQUARE_H
