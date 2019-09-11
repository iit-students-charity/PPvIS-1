#include "Rectangle.h"

Rectangle::Rectangle(float x, float y, float a_side, float b_side) : Quadrangle(x, y, a_side, b_side) {

}

float Rectangle::surface_area() {
    return a_side * b_side;
}
