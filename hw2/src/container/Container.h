#ifndef AVS_CONTAINER_H
#define AVS_CONTAINER_H

#include <iostream>
#include <memory>
#include <vector>
#include <utility>
#include "../shapes/shape/Shape.h"
#include "../shapes/sphere/Sphere.h"
#include "../shapes/tetrahedron/Tetrahedron.h"
#include "../shapes/parallelepiped/Parallelepiped.h"
#include "../random/Random.h"

class Container {
public:
    Container() = default;

    Container(int size) : size_(size) {
        if (size <= 0) {
            std::cout << "Incorrect size. Bye!";
            exit(-1);
        } else {
            std::cout << "Container inited.";
        }
    }

    ~Container() noexcept;

    void readData(std::ifstream &input);

    void rndData();

    void sortData();

    void writeData(std::ofstream &output);

    void setSize(int size);

private:
    int size_{};
    std::vector<std::unique_ptr<Shape>> data;

    static int fp(std::vector<std::unique_ptr<Shape>> arr, int start, int end, std::unique_ptr<Shape> key);
};

#endif //AVS_CONTAINER_H
