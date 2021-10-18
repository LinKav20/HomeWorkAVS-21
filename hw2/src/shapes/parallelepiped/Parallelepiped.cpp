#include "Parallelepiped.h"

void Parallelepiped::writeData(std::ofstream &output) {
    output << "PARALLELEPIPED\n";
    output << "\tThe parallelepiped with sides x: " << x_ << " y: " << y_ << " z: " << x_ << ".\n";
    output << "\tThe density is " << density_ << ".\n";
    output << "\tThe surface area is " << surfaceArea() << ".\n";
}

double Parallelepiped::surfaceArea(){
    return 2 * (y_ * x_ + y_ * z_ + z_ * x_);
}

