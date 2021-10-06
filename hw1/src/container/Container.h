#ifndef AVS_CONTAINER_H
#define AVS_CONTAINER_H

#include "../shapes/shape/Shape.h"

struct Container {
    enum {max_size = 10000};
    int size;
    Shape* data;
};

void init(Container& c, int size);

void cls(Container& c);

void readData(Container& c, std::ifstream& input);

void rndData(Container& c);

void writeData(Container& c, std::ofstream& output);

void sortData(Container& c);

int fp(Shape arr[], int start, int end, Shape key);
#endif //AVS_CONTAINER_H
