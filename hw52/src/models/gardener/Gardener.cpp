//
// Created by Linok on 14.12.2021.
//

#include "Gardener.h"

void makeGardener(Gardener &gardener) {
    gardener.id = nextId;
    nextId++;
}

void waterFlower(Flower &flower) {
    flower.isWatered = true;
}

bool canWaterFlower(Flower &flower) {
    return !flower.isWatered;
}