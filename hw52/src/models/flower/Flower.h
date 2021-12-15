//
// Created by Linok on 14.12.2021.
//

#ifndef HW5_FLOWER_H
#define HW5_FLOWER_H

int nextId = 0;

struct Flower {
    int id;
    bool isWatered;
};

void watered(Flower &flower);

void needWater(Flower &flower);

void makeFlower(Flower &flower);

#endif //HW5_FLOWER_H
