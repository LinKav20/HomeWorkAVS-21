#ifndef AVS_PARALLELEPIPED_H
#define AVS_PARALLELEPIPED_H

#include "../../shapes/shape/Shape.h"

class Parallelepiped: public Shape {
public:

    Parallelepiped() = default;

    Parallelepiped(double density, int x, int y, int z): Shape(density), x_(x), y_(y), z_(z){
        if (x <= 0 || y <= 0 || z <= 0) {
            std::cout << "Invalid value: all sides must be greater then 0.\n";
            std::cout << "Default sides are 1.\n";
            x_ = 1;
            y_ = 1;
            z_ = 1;
        }
    }

    void writeData(std::ofstream &output) override;

    double surfaceArea() override;

private:
    int x_{};
    int y_{};
    int z_{};
};

#endif //AVS_PARALLELEPIPED_H
