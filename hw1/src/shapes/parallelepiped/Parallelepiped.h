// Описание структуры параллелепипеда.

#ifndef AVS_PARALLELEPIPED_H
#define AVS_PARALLELEPIPED_H

#include <iostream>
#include <fstream>
#include "../../random/Random.h"

struct Parallelepiped {
    // Три стороны.
    int x, y, z;
};

// Чтение данных из потока.
void readData(Parallelepiped& p, std::ifstream& input);

// Создание рандомного параллелепипеда.
void rndData(Parallelepiped& p);

// Вывод данных в поток.
void writeData(Parallelepiped& p, std::ofstream& output);

// Поиск площади параллелепипеда.
double square(Parallelepiped& p);

#endif //AVS_PARALLELEPIPED_H
