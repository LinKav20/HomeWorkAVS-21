#include "Container.h"

Container::~Container() noexcept {
    size_ = 0;
    data.clear();
    std::cout << "Container cleared and deleted";
}

void Container::setSize(int size) {
    size_ = size;
}

void Container::readData(std::ifstream &input) {
    for (int i = 0; i < size_; i++) {
        int type, first_param, sec_param, third_param;
        double density;
        input >> type >> density;

        // Determine which figure read.
        switch (type) {

            // 1 - sphere.
            case 1:
                input >> first_param;
                data.push_back(std::make_unique<Sphere>(density, first_param));
                break;

            // 2 - parallelepiped.
            case 2:
                input >> first_param >> sec_param >> third_param;
                data.push_back(std::make_unique<Parallelepiped>(density, first_param, sec_param, third_param));
                break;

            // 3 - tetrahedron.
            case 3:
                input >> first_param;
                data.push_back(std::make_unique<Tetrahedron>(density, first_param));
                break;

            // If is the type incorrect.
            default:
                std::cout << "Incorrect type of shape. Bye!";
                exit(-1);
        }
    }
}

void Container::rndData() {
    for (int i = 0; i < size_; i++) {
        int type = randomInt() % 3 + 1;
        int first_param, sec_param, third_param;
        // Set a random value.
        double density = randomDouble();

        // Determine which figure read.
        switch (type) {

            // 1 - sphere.
            case 1:
                first_param = randomInt();
                data.push_back(std::make_unique<Sphere>(density, first_param));
                break;

            // 2 - parallelepiped.
            case 2:
                first_param = randomInt();
                sec_param = randomInt();
                third_param = randomInt();
                data.push_back(std::make_unique<Parallelepiped>(density, first_param, sec_param, third_param));
                break;

            // 3 - tetrahedron.
            case 3:
                first_param = randomInt();
                data.push_back(std::make_unique<Tetrahedron>(density, first_param));
                break;

            // If is the type incorrect.
            default:
                std::cout << "Incorrect type of shape. Bye!";
                exit(-1);
        }
    }
}

void Container::writeData(std::ofstream &output) {
    output << "There are " << size_ << " shapes in the container.\n";
    output << "\n";
    for (int i = 0; i < size_; i++) {
        output << i + 1 << "  ----------  ";
        // Write a message about the shape.
        data[i]->writeData(output);
        output << "\n";
    }
}

void Container::sortData() {
    int size = size_;
    int start = 0, end = 0;
    for (int i = 1; i < size; ++i) {

        // Select the current element.
        std::unique_ptr<Shape> key = std::move(data[i]);

        start = 0;
        end = i - 1;

        // Using the method of dividing in half,
        // we select an element whose density is less.
        while (start <= end) {

            int mid = start + (end - start) / 2;

            if (key->density() > data[mid]->density()) {
                end = mid - 1;
            } else {
                start = mid + 1;
            }
        }

        // Swap all elements we determine.
        for (int j = i - 1; j >= start; --j) {
            swap(data[j + 1], data[j]);
        }

        // Insert the current element.
        data[start] = std::move(key);
    }
}
