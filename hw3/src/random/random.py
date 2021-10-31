from math import ceil
from random import randrange, uniform


def random_int():
    return randrange(1000) + 1


def random_double():
    return ceil(uniform(1, 1000) * 100) / 100.0
