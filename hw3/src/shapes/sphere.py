from src.shapes.shape import Shape


class Sphere(Shape):
    def __init__(self, density, radius):
        super(Sphere, self).__init__(density)
        self.__radius__ = radius
        if radius <= 0:
            print("Invalid value: the radius must be greater then 0.\n" +
                  "Default radius is 1.\n")
            self.__radius__ = 1

    def write_data(self):
        return "SPHERE\n" + \
               "\tThe sphere with the radius is " + str(self.__radius__) + ".\n" + \
               "\tThe density is " + str(self.__density__) + ".\n" + \
               "\tThe surface area is " + self.surface_area() + ".\n"

    def surface_area(self):
        return str(self.__radius__ ** 2 * 3.141592 * 4)

    def radius(self):
        return self.__radius__

    def density(self):
        return self.__density__
