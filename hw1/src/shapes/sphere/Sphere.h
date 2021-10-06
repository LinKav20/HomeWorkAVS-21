// Описание структуры шара.

#ifndef AVS_SPHERE_H
#define AVS_SPHERE_H

#include <iostream>
#include <fstream>
#include "../../random/Random.h"

// Значение pi для вычисления площади.
const double kPI = 3.141592;

struct Sphere {
    // Радиус шара.
    int radius;
};

// Чтение данных из потока.
void readData(Sphere& sphere, std::ifstream& input);

// Создание рандомных данных.
void rndData(Sphere& sphere);

// Запись данных в поток.
void writeData(Sphere& sphere, std::ofstream& output);

// Нахождение площади поверхности шара.
double square(Sphere& sphere);

#endif //AVS_SPHERE_H
