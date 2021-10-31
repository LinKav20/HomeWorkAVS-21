from math import sqrt
from src.shapes.shape import Shape


class Tetrahedron(Shape):
    def __init__(self, density, x):
        super(Tetrahedron, self).__init__(density)
        self.__x__ = x
        if x <= 0:
            print("Invalid value: the side must be greater then 0.\n" +
                  "Default radius is 1.\n")
            self.__x__ = 1

    def write_data(self):
        return "TETRAHEDRON\n" + \
               "\tThe tetrahedron with the side " + str(self.__x__) + ".\n" + \
               "\tThe density is " + str(self.__density__) + ".\n" + \
               "\tThe surface area is " + self.surface_area() + ".\n"

    def surface_area(self):
        return str(sqrt(3) * self.__x__ ** 2)

    def x(self):
        return self.__x__

    def density(self):
        return self.__density__
