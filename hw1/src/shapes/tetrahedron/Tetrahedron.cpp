#include "Tetrahedron.h"

void readData(Tetrahedron& t, std::ifstream& input) {
    int x;
    input >> x;

    if (x > 0) {
        t.x = x;
    } else {
        std::cout << "Invalid value: the side must be greater then 0.\n";
        std::cout << "Default side is 1.\n";
        t.x = 1;
    }
}

void rndData(Tetrahedron& t) {
    t.x = randomInt();
}

void writeData(Tetrahedron& t, std::ofstream& output) {
    output << "\tThe tetrahedron with the side " << t.x << ".\n";
    output << "\tThe tetrahedron`s square is " << square(t) << ".\n";
}

double square(Tetrahedron& t){
    return sqrt(3) * t.x * t.x;
}
