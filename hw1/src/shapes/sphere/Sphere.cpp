#include "Sphere.h"

void readData(Sphere& sphere, std::ifstream& input) {
    int radius;
    input >> radius;

    if (radius > 0) {
        sphere.radius = radius;
    } else {
        std::cout << "Invalid value: the radius must be greater then 0.\n";
        std::cout << "Default radius is 1.\n";
        sphere.radius = 1;
    }
}

void rndData(Sphere& sphere) {
    sphere.radius = randomInt();
}

void writeData(Sphere& sphere, std::ofstream& output) {
    output << "\tThe sphere with the radius is " << sphere.radius << ".\n";
    output << "\tThe sphere's square is " << square(sphere) << ".\n";
}

double square(Sphere& sphere){
    return 4 * sphere.radius * sphere.radius * kPI;
}
