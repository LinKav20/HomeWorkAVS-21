// Description of the Tetrahedron class.

#ifndef AVS_TETRAHEDRON_H
#define AVS_TETRAHEDRON_H

#include "../../shapes/shape/Shape.h"

class Tetrahedron: public Shape {
 public:
    Tetrahedron() = default;

    // Tetrahedron constructor by side and density.
    Tetrahedron(double density, int x): Shape(density), x_(x){
        if (x <= 0) {
            std::cout << "Invalid value: the side must be greater then 0.\n";
            std::cout << "Default side is 1.\n";
            x_ = 1;
        }
    }

    // Method for writing data to stream.
    void writeData(std::ofstream &output) override;

    // Method for calculating the surface area of a shape.
    double surfaceArea() override;

 private:

    // The size.
    int x_{};
};

#endif //AVS_TETRAHEDRON_H
