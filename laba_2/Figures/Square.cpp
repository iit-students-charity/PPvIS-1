#include "Square.h"

Square::Square(float x, float y, float a_side) : Rectangle(x, y, a_side, a_side) {

}

float Square::surface_area() {
    return Rectangle::surface_area();
}
