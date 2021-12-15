//
// Created by Linok on 14.12.2021.
//

#ifndef HW5_GARDENER_H
#define HW5_GARDENER_H

#include "../flower/Flower.h"

int nextId = 0;

struct Gardener {
    int id;
};

void makeGardener(Gardener &gardener);

void waterFlower(Flower &flower);

bool canWaterFlower(Flower &flower);

#endif //HW5_GARDENER_H
