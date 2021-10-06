#ifndef AVS_SHAPE_H
#define AVS_SHAPE_H

#include <iostream>
#include "../sphere/Sphere.h"
#include "../parallelepiped/Parallelepiped.h"
#include "../tetrahedron/Tetrahedron.h"
#include "../../random/Random.h"

struct Shape {

    enum Key { SPHERE, PARALLELEPIPED, TETRAHEDRON };

    union {
        Sphere sphere;
        Parallelepiped parallelepiped;
        Tetrahedron tetrahedron;
    };

    double density;
    Key type;
};

void readData(Shape& info, std::ifstream& input);

void rndData(Shape& info);

void writeData(Shape& info, std::ofstream& output);

#endif //AVS_SHAPE_H
