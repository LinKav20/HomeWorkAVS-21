from math import sqrt
from src.shapes.shape import Shape


class Parallelepiped(Shape):
    def __init__(self, density, x, y, z):
        super(Parallelepiped, self).__init__(density)
        self.__x__ = x
        self.__y__ = y
        self.__z__ = z
        if x <= 0 or y <= 0 or z <=0:
            print("Invalid value: all sides must be greater then 0.\n" +
                  "Default sides are 1.\n")
            self.__x__ = 1
            self.__y__ = 1
            self.__z__ = 1

    def write_data(self):
        return "PARALLELEPIPED\n" + \
               "\tThe parallelepiped with the sides x:" + str(self.__x__) + \
               " y: " + str(self.__y__) + " z: " + str(self.__z__) + ".\n" + \
               "\tThe density is " + str(self.__density__) + ".\n" + \
               "\tThe surface area is " + self.surface_area() + ".\n"

    def surface_area(self):
        return str(2 * (self.__y__ * self.__x__ + self.__y__ * self.__z__ + self.__z__ * self.__x__))

    def x(self):
        return self.__x__

    def y(self):
        return self.__y__

    def z(self):
        return self.__z__

    def density(self):
        return self.__density__
