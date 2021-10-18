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
        switch (type) {
            case 1:
                input >> first_param;
                data.push_back(std::make_unique<Sphere>(density, first_param));
                break;
            case 2:
                input >> first_param >> sec_param >> third_param;
                data.push_back(std::make_unique<Parallelepiped>(density, first_param, sec_param, third_param));
                break;
            case 3:
                input >> first_param;
                data.push_back(std::make_unique<Tetrahedron>(density, first_param));
                break;
            default:
                std::cout << "Incorrect type of shape. Bye!";
                exit(-1);
        }
    }
}

void Container::rndData() {
    for (int i = 0; i < size_; i++) {
        int type = rand() % 3 + 1;
        int first_param, sec_param, third_param;
        double density = randomDouble();
        switch (type) {
            case 1:
                first_param = randomInt();
                data.push_back(std::make_unique<Sphere>(density, first_param));
                break;
            case 2:
                first_param = randomInt();
                sec_param = randomInt();
                third_param = randomInt();
                data.push_back(std::make_unique<Parallelepiped>(density, first_param, sec_param, third_param));
                break;
            case 3:
                first_param = randomInt();
                data.push_back(std::make_unique<Tetrahedron>(density, first_param));
                break;
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
        data[i]->writeData(output);
        output << "\n";
    }
}

int Container::fp(std::vector<std::unique_ptr<Shape>> arr, int start, int end, std::unique_ptr<Shape> key) {
    while (start <= end) {
        int mid = start + (end - start) / 2;

        if (key->density() > arr[mid]->density()) {
            end = mid - 1;
        } else {
            start = mid + 1;
        }
    }
    return start;
}

void Container::sortData() {
    int size = size_;
    int start = 0, end = 0;
    for (int i = 1; i < size; ++i) {

        std::unique_ptr<Shape> key = std::move(data[i]);

        start = 0;
        end = i - 1;

        while (start <= end) {

            int mid = start + (end - start) / 2;

            if (key->density() > data[mid]->density()) {
                end = mid - 1;
            } else {
                start = mid + 1;
            }
        }

        for (int j = i - 1; j >= start; --j) {
            swap(data[j + 1], data[j]);
        }

        data[start] = std::move(key);
    }
}
