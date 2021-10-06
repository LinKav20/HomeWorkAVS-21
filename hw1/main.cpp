#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cstring>
#include <ctime>

#include "src/container/Container.h"

using std::cout;

void invalidParametersListException() {
    std::cout << "Invalid input parameters!\n";
    std::cout << "Expected:\n";
    std::cout << "\t-i <input_file> <out_file_data> <out_file_sorted_data> \n";
    std::cout << "\tOr: \n";
    std::cout << "\t-r <input_file> <out_file_data> <out_file_sorted_data>";
}

void incorrectFlagsException(){
    std::cout << "Invalid flags!\n";
    std::cout << "Expected:\n";
    std::cout << "\t-i for input data \n";
    std::cout << "\tOr: \n";
    std::cout << "\t-r for create random data";
}
void fillContainer(Container& container, char* argv[]) {
    int size = 0;

    if (std::strcmp(argv[1], "-i") == 0) {
        std::ifstream input(argv[2]);
        input >> size;
        init(container, size);
        readData(container, input);
        return;
    }

    if (std::strcmp(argv[1], "-r") == 0) {
        std::ifstream input(argv[2]);
        input >> size;

        init(container, size);
        srand(time(nullptr));
        rndData(container);
        return;
    }

    incorrectFlagsException();
}

int main(int argc, char* argv[]) {
    if (argc != 5) {
        invalidParametersListException();
        return 1;
    }

    cout << "The program was start.\n\n";

    Container container;
    cout << "The container was created.\n";
    cout << "The container was inited.\n";
    fillContainer(container, argv);
    cout << "The container was filled.\n\n";

    std::ofstream outputData(argv[3]);
    std::ofstream sortedData(argv[4]);
    writeData(container, outputData);
    cout << "The data was printed into first stream.\n";

    sortData(container);
    cout << "The data was sorted.\n";
    writeData(container, sortedData);
    cout << "The data was printed into second stream.\n\n";

    cls(container);
    cout << "The container was cleared.\n";
    cout << "The program was end.\n\n";
}
