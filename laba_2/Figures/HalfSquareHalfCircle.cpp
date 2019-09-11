#include "HalfSquareHalfCircle.h"

HalfSquareHalfCircle::HalfSquareHalfCircle(float x, float y, float r) : Circle(x, y, r), Square(x, y, 2 * r) {

}

float HalfSquareHalfCircle::surface_area() {
    float circle_area = Ellipse::surface_area();
    float square_area = Square::surface_area();
    return (circle_area + square_area) / 2;
}

