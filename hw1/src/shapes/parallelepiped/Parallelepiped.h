#ifndef AVS_PARALLELEPIPED_H
#define AVS_PARALLELEPIPED_H

#include <iostream>
#include <fstream>
#include "../../random/Random.h"

struct Parallelepiped {
    int x, y, z;
};

void readData(Parallelepiped& p, std::ifstream& input);

void rndData(Parallelepiped& p);

void writeData(Parallelepiped& p, std::ofstream& output);

double square(Parallelepiped& p);

#endif //AVS_PARALLELEPIPED_H
