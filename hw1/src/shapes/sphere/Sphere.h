#ifndef AVS_SPHERE_H
#define AVS_SPHERE_H

#include <iostream>
#include <fstream>
#include "../../random/Random.h"

const double kPI = 3.141592;

struct Sphere {
    int radius;
};

void readData(Sphere& sphere, std::ifstream& input);

void rndData(Sphere& sphere);

void writeData(Sphere& sphere, std::ofstream& output);

double square(Sphere& sphere);

#endif //AVS_SPHERE_H
