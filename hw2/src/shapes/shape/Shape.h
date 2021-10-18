#ifndef AVS_SHAPE_H
#define AVS_SHAPE_H

#include <fstream>
#include <iostream>

class Shape {
public:

    Shape() { density_ = 0; }

    Shape(double density): density_(density){

    }

    virtual void writeData(std::ofstream &output) = 0;

    virtual double surfaceArea() = 0;

    double density() const;

protected:
    double density_{};
};

#endif //AVS_SHAPE_H
