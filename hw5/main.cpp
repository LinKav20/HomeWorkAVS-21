#include <iostream>
#include <thread>
#include <mutex>

std::mutex locker;

const std::string flowerWatered = "*";
const std::string flowerWilted = ".";

// Array of all flowers.
// 0 - if it is not watered,
// 1 - else.
int *flowers;

// Array of threads-gardeners.
std::thread *gardeners;

// Number of flowers and gardeners.
int num_flowers, num_gardeners;

/**
 * A function that checks whether flowers need water.
 * @return True if flowers still need water, else false.
 */
bool flowersNeedWater() {
    int sum = 0;
    for (int i = 0; i < num_flowers; i++) {
        sum += flowers[i];
    }
    return sum != num_flowers;
}

/**
 * Shows the state of the flowerbed at the moment.
 */
void showFlowerbedState(){
    for (int i = 0; i < num_flowers; i++) {
        if (flowers[i] == 0) {
            std::cout << flowerWatered;
        } else {
            std::cout << flowerWilted;
        }
    }
}

/**
 * The function of watering flowers, which is performed by the gardener.
 * @param id Id of the gardener.
 */
void gardenerAlive(int id) {
    while (flowersNeedWater()) {
        int position = rand() % num_flowers;

        if (flowers[position] == 0) {
            locker.lock();

            flowers[position] = 1;
            showFlowerbedState();
            std::cout << "\tGardener " << id + 1 << " water flower " << position + 1 << "\n";

            locker.unlock();

            std::this_thread::sleep_for(std::chrono::milliseconds(rand() % 1000));
        }
    }
}

/**
 * Join all gardeners to wait for each thread to finish executing.
 */
void joinGardeners(){
    for (int i = 0; i < num_gardeners; i++) {
        gardeners[i].join();
    }
}

/**
 * Start all threads.
 */
void startGardeners(){
    for (int i = 0; i < num_gardeners; i++) {
        gardeners[i] = std::thread(gardenerAlive, i);
    }
}

/**
 * Init flowers array.
 */
void initFlowers(){
    for (int i = 0; i < num_flowers; i++) {
        flowers[i] = 0;
    }
}

/**
 * Start the program.
 * @param number_flowers Number of flowers.
 * @param number_gardeners Number of gardeners.
 */
void start(int number_flowers, int number_gardeners) {
    num_flowers = number_flowers;
    num_gardeners = number_gardeners;

    flowers = new int[number_flowers];
    gardeners = new std::thread[num_gardeners];

    initFlowers();
    startGardeners();
    joinGardeners();
}

int main() {
    start(40, 2);
    return 0;
}