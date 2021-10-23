#include <iostream>
#include <cstdlib>
#include <cstring>
#include <ctime>

#include "src/container/Container.h"

using std::cout;

// Error message when entering an incorrect number of parameters.
void invalidParametersListException() {
    std::cout << "Invalid input parameters!\n";
    std::cout << "Expected:\n";
    std::cout << "\t-i <input_file> <out_file_data> <out_file_sorted_data> \n";
    std::cout << "\tOr: \n";
    std::cout << "\t-r <input_file> <out_file_data> <out_file_sorted_data>";
}

// Error message when entering an incorrect flag.
void incorrectFlagsException(){
    std::cout << "Invalid flags!\n";
    std::cout << "Expected:\n";
    std::cout << "\t-i for input data \n";
    std::cout << "\tOr: \n";
    std::cout << "\t-r for create random data";
}

// Filling and initializing the container.
void fillContainer(Container& container, char* argv[]) {

    // The variable for read size of container.
    int size = 0;

    // Reading data from stream.
    if (std::strcmp(argv[1], "-i") == 0) {

        std::ifstream input(argv[2]);
        input >> size;

        // Set size.
        container.setSize(size);
        container.readData(input);
        return;
    }

    // Creating random data.
    if (std::strcmp(argv[1], "-r") == 0) {

        std::ifstream input(argv[2]);
        input >> size;

        srand(time(nullptr));

        // Set size.
        container.setSize(size);
        container.rndData();
        return;
    }

    // In case of errors output this message.
    incorrectFlagsException();
}

int main(int argc, char* argv[]) {

    // We check whether we have received
    // the required number of arguments.
    if (argc != 5) {

        // In case of errors params this message.
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
    container.writeData(outputData);
    cout << "The data was printed into first stream.\n";

    container.sortData();
    cout << "The data was sorted.\n";
    container.writeData(sortedData);
    cout << "The data was printed into second stream.\n\n";

    cout << "The container was cleared.\n";
    cout << "The program was end.\n\n";
}
