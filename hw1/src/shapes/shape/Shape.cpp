#include "Shape.h"

void readData(Shape& s, std::ifstream& input) {
    double den;
    int type_int;
    Shape::Key type;
    input >> type_int >> den;

    // Перенапраляем ввод данных на нужную
    // нам функцию в зависимоти от типа фигуры.
    switch (type_int) {
        case 1: {
            type = Shape::SPHERE;
            readData(s.sphere, input);
            break;
        }
        case 2: {
            type = Shape::PARALLELEPIPED;
            readData(s.parallelepiped, input);
            break;
        }
        case 3: {
            type = Shape::TETRAHEDRON;
            readData(s.tetrahedron, input);
            break;
        }
        default: {
            std::cout << "Invalid type! Try one of this: \n\t1 - Sphere, \n\t2 - Parallelepiped, \n\t3 - Tetrahedron\n";
            return;
        }
    }

    s.type = type;
    s.density = den;
}

void rndData(Shape& s) {
    int type = randomInt() % 3;
    s.density = randomDouble();

    // Перенапраляем ввод данных на нужную
    // нам функцию в зависимоти от типа фигуры.
    switch (type) {
        case 0: {
            s.type = Shape::SPHERE;
            rndData(s.sphere);
            break;
        }
        case 1: {
            s.type = Shape::PARALLELEPIPED;
            rndData(s.parallelepiped);
            break;
        }
        case 2: {
            s.type = Shape::TETRAHEDRON;
            rndData(s.tetrahedron);
            break;
        }
    }
}

void writeData(Shape& s, std::ofstream& output) {
    // Перенапраляем вывод данных на нужную
    // нам функцию в зависимоти от типа фигуры.
    switch (s.type) {
        case Shape::SPHERE: {
            writeData(s.sphere, output);
            break;
        }
        case Shape::PARALLELEPIPED: {
            writeData(s.parallelepiped, output);
            break;
        }
        case Shape::TETRAHEDRON: {
            writeData(s.tetrahedron, output);
            break;
        }
    }
    output << "\tThe density of shape is " << s.density << ".\n";
}
