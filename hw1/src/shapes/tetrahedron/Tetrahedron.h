#ifndef AVS_TETRAHEDRON_H
#define AVS_TETRAHEDRON_H

#include <iostream>
#include <fstream>
#include <math.h>
#include "../../random/Random.h"

struct Tetrahedron {
    int x;
};

void readData(Tetrahedron& t, std::ifstream& input);

void rndData(Tetrahedron& t);

void writeData(Tetrahedron& t, std::ofstream& output);

double square(Tetrahedron& t);

#endif //AVS_TETRAHEDRON_H
