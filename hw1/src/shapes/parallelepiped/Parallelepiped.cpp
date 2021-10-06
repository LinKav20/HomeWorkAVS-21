#include "Parallelepiped.h"

void readData(Parallelepiped& p, std::ifstream& input) {
    int x, y, z;
    input >> x >> y >> z;

    if (x > 0 && y > 0 && z > 0) {
        p.x = x;
        p.y = y;
        p.z = z;
    } else {
        std::cout << "Invalid value: all sides must be greater then 0.\n";
        std::cout << "Default sides are 1.\n";
        p.x = 1;
        p.y = 1;
        p.z = 1;
    }
}

void rndData(Parallelepiped& p) {
    p.x = randomInt();
    p.y = randomInt();
    p.z = randomInt();
}

void writeData(Parallelepiped& p, std::ofstream& output) {
    output << "\tThe parallelepiped with sides x: " << p.x << " y: " << p.y << " z: " << p.z << ".\n";
    output << "\tThe parallelepiped`s square is " << square(p) << ".\n";
}

double square(Parallelepiped& p){
    return p.x * p.y * p.z;
}
