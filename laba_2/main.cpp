#include <iostream>
#include "Figures/BasicFigure.h"
#include "Figures/Ellipse.h"
#include "Figures/Circle.h"
#include "Figures/Quadrangle.h"
#include "Figures/Rectangle.h"
#include "Figures/Square.h"
#include "Figures/HalfSquareHalfCircle.h"

using namespace std;

int main() {
    Ellipse a(1, 1, 3, 4);
    cout << "Surface area of Ellipse = " << a.surface_area() << endl;

    Circle b(1, 1, 4);
    cout << "Surface area of Circle = " << b.surface_area() << endl;

    Quadrangle c(1, 1, 3, 4, 2, 3);
    cout << "Surface area of Quadrangle = " << c.surface_area() << endl;

    Rectangle d(1, 1, 3, 4);
    cout << "Surface area of Rectangle = " << d.surface_area() << endl;

    Square e(1, 1, 2);
    cout << "Surface area of Square = " << e.surface_area() << endl;

    HalfSquareHalfCircle f();
    cout << "Surface area of Square = " << e.surface_area() << endl;

    return 0;
}
