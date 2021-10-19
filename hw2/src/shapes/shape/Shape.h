// Description of the Shape class.

#ifndef AVS_SHAPE_H
#define AVS_SHAPE_H

#include <fstream>
#include <iostream>

class Shape {
 public:

    Shape() { density_ = 0; }

    // Shape constructor by density.
    Shape(double density): density_(density){

    }

    // Method for writing data to stream.
    virtual void writeData(std::ofstream &output) = 0;

    // Method for calculating the surface area of a shape.
    virtual double surfaceArea() = 0;

    double density() const;

 protected:

    // The density.
    double density_{};
};

#endif //AVS_SHAPE_H
