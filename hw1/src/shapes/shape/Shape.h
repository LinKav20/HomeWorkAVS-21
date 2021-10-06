// Описание структуры фигуры.

#ifndef AVS_SHAPE_H
#define AVS_SHAPE_H

#include <iostream>
#include "../sphere/Sphere.h"
#include "../parallelepiped/Parallelepiped.h"
#include "../tetrahedron/Tetrahedron.h"
#include "../../random/Random.h"

struct Shape {
    // Перечисление видов фигур.
    enum Key { SPHERE, PARALLELEPIPED, TETRAHEDRON };

    // Сущности фигур.
    union {
        Sphere sphere;
        Parallelepiped parallelepiped;
        Tetrahedron tetrahedron;
    };
    // Плотность и тип фигуры.
    double density;
    Key type;
};

// Чтение данных из потока.
void readData(Shape& info, std::ifstream& input);

// Создание рандомной фигуры.
void rndData(Shape& info);

// Запись данных в поток.
void writeData(Shape& info, std::ofstream& output);

#endif //AVS_SHAPE_H
