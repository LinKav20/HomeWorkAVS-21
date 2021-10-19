// Description of the Sphere class.

#ifndef AVS_SPHERE_H
#define AVS_SPHERE_H

#include "../../shapes/shape/Shape.h"

class Sphere: public Shape {
 public:
    Sphere() = default;

    // Sphere constructor by radius and density.
    Sphere(double density, int r): Shape(density), radius_(r){
        if (r <= 0) {
            std::cout << "Invalid value: the radius must be greater then 0.\n";
            std::cout << "Default radius is 1.\n";
            radius_ = 1;
        }
    }

    // Method for writing data to stream.
    void writeData(std::ofstream &output) override;

    // Method for calculating the surface area of a shape.
    double surfaceArea() override;

 private:

    // The radius.
    int radius_{};

    // The constant of number pi.
    const double kPI = 3.141592;
};

#endif //AVS_SPHERE_H
