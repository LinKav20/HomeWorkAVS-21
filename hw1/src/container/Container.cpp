#include "Container.h"

void init(Container& c, int size) {
    c.size = size;
    c.data = new Shape[size];
}

void cls(Container& c) {
    delete c.data;
    c.size = 0;
}

void readData(Container& c, std::ifstream& input) {
    for (int i = 0; i < c.size; i++) {
        Shape shape;
        readData(shape, input);
        *(c.data + i) = shape;
    }
}

void rndData(Container& c) {
    for (int i = 0; i < c.size; i++) {
        rndData(c.data[i]);
    }
}

void writeData(Container& c, std::ofstream& output) {
    output << "There are " << c.size << " shapes in the container.\n";
    for (int i = 0; i < c.size; i++) {
        output << "----------  " << i + 1 << "\n";
        writeData(c.data[i], output);
    }
}

void sortData(Container& c) {
    int size = c.size;

    for (int i = 1; i < size; ++i) {
        Shape key = c.data[i];
        int insertedPosition = fp(c.data, 0, i - 1, key);

        for (int j = i - 1; j >= insertedPosition; --j) {
            c.data[j + 1] = c.data[j];
        }

        c.data[insertedPosition] = key;
    }
}

int fp(Shape arr[], int start, int end, Shape key) {
    while (start <= end) {
        int mid = start + (end - start) / 2;

        if (key.density > arr[mid].density) {
            end = mid - 1;
        } else {
            start = mid + 1;
        }
    }
    return start;
}
