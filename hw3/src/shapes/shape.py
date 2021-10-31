class Shape:

    def __init__(self, density):
        self.__density__ = density
        if density < 0 or density > 10000:
            print("Incorrect density od the shape.\n"
                  "Set the default value for density = 1.\n")
            self.__density__ = 1

    def density(self):
        return self.__density__
