#include "Sphere.h"

void Sphere::writeData(std::ofstream &output) {
    output << "SPHERE\n";
    output << "\tThe sphere with the radius is " << radius_ << ".\n";
    output << "\tThe density is " << density_ << ".\n";
    output << "\tThe surface area is " << surfaceArea() << ".\n";
}

double Sphere::surfaceArea(){
    return 4 * radius_ * radius_ * kPI;
}
