#ifndef AVS_TETRAHEDRON_H
#define AVS_TETRAHEDRON_H

#include "../../shapes/shape/Shape.h"

class Tetrahedron: public Shape {
public:
    Tetrahedron() = default;

    Tetrahedron(double density, int x): Shape(density), x_(x){
        if (x <= 0) {
            std::cout << "Invalid value: the side must be greater then 0.\n";
            std::cout << "Default side is 1.\n";
            x_ = 1;
        }
    }

    void writeData(std::ofstream &output) override;

    double surfaceArea() override;

private:
    int x_{};
};

#endif //AVS_TETRAHEDRON_H
