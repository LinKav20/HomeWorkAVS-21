#include "Random.h"

int randomInt() {
    return rand() % 1000 + 1;
}

double randomDouble(){
    double d;
    d = (double) rand() / ((double) RAND_MAX + 1);
    return d * 1000;
}
