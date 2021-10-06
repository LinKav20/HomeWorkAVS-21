// Описание структуры тетраэдра.

#ifndef AVS_TETRAHEDRON_H
#define AVS_TETRAHEDRON_H

#include <iostream>
#include <fstream>
#include <math.h>
#include "../../random/Random.h"

struct Tetrahedron {
    // Длина ребра.
    int x;
};

// Чтение данных из потока.
void readData(Tetrahedron& t, std::ifstream& input);

// Создание рандомного тетраэдра.
void rndData(Tetrahedron& t);

// Запись данных в поток.
void writeData(Tetrahedron& t, std::ofstream& output);

// Нахождение площади поверхности тетраэдра.
double square(Tetrahedron& t);

#endif //AVS_TETRAHEDRON_H
