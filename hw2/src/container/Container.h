// Description of the Container class.

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

    // Container constructor by size.
    Container(int size) : size_(size) {
        if (size <= 0) {
            std::cout << "Incorrect size. Bye!";
            exit(-1);
        } else {
            std::cout << "Container inited.";
        }
    }

    // Destructor
    ~Container() noexcept;

    // Method for reading data from stream.
    void readData(std::ifstream &input);

    // Method for setting a random data.
    void rndData();

    // Method for sorting data.
    void sortData();

    // Method for writing data to stream.
    void writeData(std::ofstream &output);

    // Method for set a new size.
    void setSize(int size);

 private:

    // Size of the container.
    int size_{};

    // Data of the container.
    std::vector<std::unique_ptr<Shape>> data;
};

#endif //AVS_CONTAINER_H
