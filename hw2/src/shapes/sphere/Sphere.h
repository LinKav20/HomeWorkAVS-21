#ifndef AVS_SPHERE_H
#define AVS_SPHERE_H

#include "../../shapes/shape/Shape.h"

class Sphere: public Shape {
public:
    Sphere() = default;

    Sphere(double density, int r): Shape(density), radius_(r){
        if (r <= 0) {
            std::cout << "Invalid value: the radius must be greater then 0.\n";
            std::cout << "Default radius is 1.\n";
            radius_ = 1;
        }
    }

    void writeData(std::ofstream &output) override;

    double surfaceArea() override;

private:
    int radius_{};
    const double kPI = 3.141592;
};

#endif //AVS_SPHERE_H
