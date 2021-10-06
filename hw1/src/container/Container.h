// Описание структуры контейнера.

#ifndef AVS_CONTAINER_H
#define AVS_CONTAINER_H

// Подключаем формы.
#include "../shapes/shape/Shape.h"

struct Container {
    enum {max_size = 10000};
    int size;
    Shape* data;
};

// Инициализация контейнера.
void init(Container& c, int size);

// Очистка контейнера.
void cls(Container& c);

// Чтение данных из потока.
void readData(Container& c, std::ifstream& input);

// Заполнение контейнера рандомными данными.
void rndData(Container& c);

// Вывод данных в поток.
void writeData(Container& c, std::ofstream& output);

// Сортировка контейнера.
void sortData(Container& c);

// Вспомогательная функция для сортировки.
int fp(Shape arr[], int start, int end, Shape key);
#endif //AVS_CONTAINER_H
