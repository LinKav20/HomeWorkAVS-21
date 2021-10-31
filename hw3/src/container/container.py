from src.shapes.paralellepiped import Parallelepiped
from src.shapes.sphere import Sphere
from src.shapes.tetrahedron import Tetrahedron
from src.random.random import random_int, random_double


class Container:

    def __init__(self):
        self.__shapes__ = []
        self.__size__ = 0
        pass

    def read_data(self, input_stream):
        for i in range(self.__size__):
            first_param = -1
            second_param = -1
            third_param = -1
            density = -1
            my_shape_params = input_stream.readline().split()
            type_of_shape = int(my_shape_params[0])

            if type_of_shape == 1:

                if len(my_shape_params) != 3:
                    print("Incorrect number of params... Bye!")
                    exit(-1)

                density = float(my_shape_params[1])
                first_param = int(my_shape_params[2])
                self.__shapes__.append(Sphere(density, first_param))

            elif type_of_shape == 2:

                if len(my_shape_params) != 5:
                    print("Incorrect number of params... Bye!")
                    exit(-1)

                density = float(my_shape_params[1])
                second_param = int(my_shape_params[2])
                first_param = int(my_shape_params[3])
                third_param = int(my_shape_params[4])
                self.__shapes__.append(Parallelepiped(density, first_param, second_param, third_param))

            elif type_of_shape == 3:

                if len(my_shape_params) != 3:
                    print("Incorrect number of params... Bye!")
                    exit(-1)

                density = float(my_shape_params[1])
                first_param = int(my_shape_params[2])
                self.__shapes__.append(Tetrahedron(density, first_param))
            else:
                print("Incorrect type of shape.")
        pass

    def rnd_data(self):
        for i in range(self.__size__):
            type_of_shape = random_int() % 3 + 1

            if type_of_shape == 1:
                density = random_double()
                first_param = random_int()
                self.__shapes__.append(Sphere(density, first_param))

            elif type_of_shape == 2:
                density = random_double()
                second_param = random_int()
                first_param = random_int()
                third_param = random_int()
                self.__shapes__.append(Parallelepiped(density, first_param, second_param, third_param))

            elif type_of_shape == 3:
                density = random_double()
                first_param = random_int()
                self.__shapes__.append(Tetrahedron(density, first_param))

            else:
                print("Incorrect type of shape.")
        pass

    def sort_data(self):
        for i in range(1, self.__size__):
            key = self.__shapes__[i]
            start = 0
            end = i - 1

            start = self.find_index(key, start, end)

            for j in range(i - 1, start, -1):
                temp = self.__shapes__[j + 1]
                self.__shapes__[j + 1] = self.__shapes__[j]
                self.__shapes__[j] = temp

            self.__shapes__[start] = key
        pass

    def set_size(self, size):
        if size <= 0:
            print("Incorrect size. Bye!\n")
            exit(-1)
        self.__size__ = size
        pass

    def write_data(self, output_stream):
        output_stream.write("There are " + str(self.__size__) + " shapes in the container.\n\n")
        for i in range(self.__size__):
            output_stream.write(str(i + 1) + "  ----------  ")
            output_stream.write(self.__shapes__[i].write_data() + "\n")

    def find_index(self, key, start, end):
        if end <= start:
            if key.density() < self.__shapes__[start].density():
                return start + 1
            return start

        mid = (start + end) // 2

        if key.density() < self.__shapes__[mid].density():
            return self.find_index(key, mid + 1, end)

        if key.density() == self.__shapes__[mid].density():
            return mid + 1

        return self.find_index(key, start, mid - 1)
