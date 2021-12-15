//
// Created by Linok on 14.12.2021.
//

#include "Flower.h"

void watered(Flower &flower) {
    flower.isWatered = true;
    sleep(5000);
    needWater(flower);
}

void needWater(Flower &flower) {
    flower.isWatered = false;
}

void makeFlower(Flower &flower) {
    flower.id = nextId;
    nextId++;
    flower.isWatered = false;
}