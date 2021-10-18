#include "Tetrahedron.h"

void Tetrahedron::writeData(std::ofstream &output) {
    output << "TETRAHEDRON\n";
    output << "\tThe tetrahedron with the side " << x_ << ".\n";
    output << "\tThe density is " << density_ << ".\n";
    output << "\tThe surface area is " << surfaceArea() << ".\n";
}

double Tetrahedron::surfaceArea(){
    return sqrt(3) * x_ * x_;
}