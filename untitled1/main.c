#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <math.h>

#define MAX_SIZE 10000

typedef struct Sphere {
    int radius;
} Sphere;


typedef struct Tetrahedron {
    int x;
} Tetrahedron;


typedef struct Parallelepiped {
    int x;
    int y;
    int z;
} Parallelepiped;


typedef struct Shape {
    double density;
    int type_of_shape;

    union type_of_shape {
        Sphere sphere;
        Tetrahedron tetrahedron;
        Parallelepiped parallelepiped;
    } type;
} Shape;


void read_sphere(FILE *input, Shape *shape) {
    int radius;
    fscanf(input, "%d", &radius);
    if (radius <= 0) {
        printf("Invalid value: the radius must be greater then 0.\n");
        printf("Default radius is 1.\n");
        radius = 1;
    }
    (*shape).type.sphere.radius = radius;
}


void read_tetrahedron(FILE *input, Shape *shape) {
    int x;
    fscanf(input, "%d", &x);
    if (x <= 0) {
        printf("Invalid value: the side must be greater then 0.\n");
        printf("Default side is 1.\n");
        x = 1;
    }
    (*shape).type.tetrahedron.x = x;
}


void read_parallelepiped(FILE *input, Shape *shape) {
    int x, y, z;
    fscanf(input, "%d %d %d", &x, &y, &z);
    if (x <= 0 || y <= 0 || z <= 0) {
        printf("Invalid value: all sides must be greater then 0.\n");
        printf("Default sides is 1.\n");
        x = 1;
        y = 1;
        z = 1;
    }
    (*shape).type.parallelepiped.x = x;
    (*shape).type.parallelepiped.y = y;
    (*shape).type.parallelepiped.z = z;
}


int read_data(FILE *input, Shape *shapes, int capacity) {
    int num;

    fscanf(input, "%d", &num);

    int size = num > capacity ? capacity : num;

    for (int position = 0; position < num; position++) {
        fscanf(input, "%d %lf",
               &shapes[position].type_of_shape,
               &shapes[position].density);

        if (&shapes[position].density < 0) {
            printf("Density is negative.");
            exit(-10);
        }

        switch (shapes[position].type_of_shape) {
            case 1:
                read_sphere(input, &shapes[position]);
                break;

            case 2:
                read_parallelepiped(input, &shapes[position]);
                break;

            case 3:
                read_tetrahedron(input, &shapes[position]);
                break;

            default:
                printf("Incorrect type of shape. %d", shapes[position].type_of_shape);
                exit(-2);
        }

    }

    fclose(input);
    return size;
}


void rnd_sphere(Shape *shape) {
    (*shape).type.sphere.radius = rand() % 999 + 1;
}


void rnd_tetrahedron(Shape *shape) {
    (*shape).type.tetrahedron.x = rand() % 999 + 1;
}


void rnd_parallelepiped(Shape *shape) {
    (*shape).type.parallelepiped.x = rand() % 999 + 1;
    (*shape).type.parallelepiped.y = rand() % 999 + 1;
    (*shape).type.parallelepiped.z = rand() % 999 + 1;
}


int rnd_data(FILE *input, Shape *shapes, int capacity) {
    int num;

    fscanf(input, "%d", &num);

    int size = num < 0 ? capacity :
               num > capacity ? capacity : num;

    for (int position = 0; position < size; ++position) {
        shapes[position].type_of_shape = rand() % 3 + 1;
        shapes[position].density = ((double) rand() * 1000) / (double) 100;

        switch (shapes[position].type_of_shape) {
            case 1:
                rnd_sphere(&shapes[position]);
                break;
            case 2:
                rnd_tetrahedron(&shapes[position]);
                break;
            case 3:
                rnd_parallelepiped(&shapes[position]);
                break;
            default:
                printf("Incorrect type of shape.");
                break;
        }
    }

    return size;
}


void print_sphere(FILE *output, Shape *shape) {
    fprintf(output, "SPHERE\n"
                    "\tThe sphere with the radius is %d.\n"
                    "\tThe density is %lf.\n"
                    "\tThe surface area is %lf.\n",
            (*shape).type.sphere.radius,
            (*shape).density,
            (*shape).type.sphere.radius * (*shape).type.sphere.radius * 3.141592 * 4);
}


void print_tetrahedron(FILE *output, Shape *shape) {
    fprintf(output, "TETRAHEDRON\n"
                    "\tThe tetrahedron with the side %d.\n"
                    "\tThe density is %lf.\n"
                    "\tThe surface area is %lf.\n",
            (*shape).type.tetrahedron.x,
            (*shape).density,
            (*shape).type.tetrahedron.x * (*shape).type.tetrahedron.x * sqrt(3));
}


void print_parallelepiped(FILE *output, Shape *shape) {
    fprintf(output, "PARALLELEPIPED\n"
                    "\tThe parallelepiped with the sides x: %d"
                    " y: %d z: %d.\n"
                    "\tThe density is %lf.\n"
                    "\tThe surface area is %d.\n",
            (*shape).type.parallelepiped.x,
            (*shape).type.parallelepiped.y,
            (*shape).type.parallelepiped.z,
            (*shape).density,
            2 * ((*shape).type.parallelepiped.x * (*shape).type.parallelepiped.y +
                 (*shape).type.parallelepiped.x * (*shape).type.parallelepiped.y +
                 (*shape).type.parallelepiped.x * (*shape).type.parallelepiped.y));
}


void write_data(FILE *output, Shape *shapes, int num) {
    if (output == NULL) {
        exit(-14);
    }

    fprintf(output, "There are %d shapes in the container.\n\n", num);
    for (int position = 0; position < num; ++position) {
        fprintf(output, "%d  ----------  ", position);

        switch (shapes[position].type_of_shape) {
            case 1:
                print_sphere(output, &shapes[position]);
                break;
            case 2:
                print_tetrahedron(output, &shapes[position]);
                break;
            case 3:
                print_parallelepiped(output, &shapes[position]);
                break;
            default:
                printf("Incorrect type of shape.");
                break;

        }
        fprintf(output, "\n");
    }

    fclose(output);
}


int fp(Shape *shapes, int start, int end, Shape key) {
    while (start <= end) {
        int mid = start + (end - start) / 2;

        if (key.density > shapes[mid].density) {
            end = mid - 1;
        } else {
            start = mid + 1;
        }
    }
    return start;
}


void sort_data(Shape *shapes, int num) {
    for (int position = 0; position < num; ++position) {
        Shape key = shapes[position];
        int insertedPosition = fp(shapes, 0, position - 1, key);

        for (int j = position - 1; j >= insertedPosition; --j) {
            shapes[j + 1] = shapes[j];
        }

        shapes[insertedPosition] = key;
    }
}


void invalid_parameters_list_exception() {
    printf("Invalid input parameters!\n");
    printf("Expected:\n");
    printf("\t-i <input_file> <out_file_data> <out_file_sorted_data> \n");
    printf("\tOr: \n");
    printf("\t-r <input_file> <out_file_data> <out_file_sorted_data>");
}


void incorrect_flag_exception() {
    printf("Invalid flags!\n");
    printf("Expected:\n");
    printf("\t-i for input data \n");
    printf("\tOr: \n");
    printf("\t-r for create random data");
    exit(-2);
}


void fill_container(Shape *shapes, int *size, char *argv[]) {
    FILE *input = fopen(argv[2], "r");
    if (input == NULL) {
        exit(-10);
    }

    if (strcmp(argv[1], "-i") == 0) {
        *size = read_data(input, shapes, MAX_SIZE);
        return;
    }

    if (strcmp(argv[1], "-r") == 0) {
        *size = rnd_data(input, shapes, MAX_SIZE);
        return;
    }

    incorrect_flag_exception();
}


int main(int argc, char *argv[]) {
    if (argc != 5) {
        invalid_parameters_list_exception();
        return -1;
    }

    clock_t start = clock();
    printf("The program was start.\n\n");

    Shape shapes[MAX_SIZE];
    printf("The container was created.\n");
    printf("The container was inited.\n");

    int size;
    fill_container(shapes, &size, argv);
    printf("The container was filled.\n\n");

    FILE *output_stream = fopen(argv[3], "w");
    FILE *sorted_output_stream = fopen(argv[4], "w");

    write_data(output_stream, shapes, size);
    printf("The data was printed into first stream.\n");

    sort_data(shapes, size);
    printf("The data was sorted.\n");
    write_data(sorted_output_stream, shapes, size);
    printf("The data was printed into second stream.\n\n");

    clock_t end = clock();
    printf("Time is %lf sec.", (end - start) / 1000.0);
    printf("The program was end.\n\n");

    return 0;
}