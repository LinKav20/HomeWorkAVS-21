import sys
import time

from src.container.container import Container


def invalid_parameters_list_exception():
    print("Invalid input parameters!\n" +
          "Expected:\n" +
          "\t-i <input_file> <out_file_data> <out_file_sorted_data> \n" +
          "\tOr: \n" +
          "\t-r <input_file> <out_file_data> <out_file_sorted_data>")
    pass


def incorrect_flag_exception():
    print("Invalid flags!\n" +
          "Expected:\n" +
          "\t-i for input data \n" +
          "\tOr: \n" +
          "\t-r for create random data")
    pass


def fill_container(container, argv):
    if argv[1] == "-i":
        input_stream = open(argv[2], 'r', encoding="utf-8")
        size = int(input_stream.readline())

        container.set_size(size)
        container.read_data(input_stream)
        return

    if argv[1] == "-r":
        input_stream = open(argv[2], 'r', encoding="utf-8")
        size = int(input_stream.readline())

        container.set_size(size)
        container.rnd_data()
        return

    incorrect_flag_exception()
    pass


if __name__ == "__main__":
    if len(sys.argv) != 5:
        invalid_parameters_list_exception()
        exit(-1)

    start_time = time.time()
    print("The program was start.\n\n")

    container = Container()
    print("The container was created.\n")
    print("The container was inited.\n")

    fill_container(container, sys.argv)
    print("The container was filled.\n\n")

    output_stream = open(sys.argv[3], 'w', encoding="utf-8")
    sorted_output_stream = open(sys.argv[4], 'w', encoding="utf-8")
    container.write_data(output_stream)
    print("The data was printed into first stream.\n")

    container.sort_data()
    print("The data was sorted.\n")
    container.write_data(sorted_output_stream)
    print("The data was printed into second stream.\n\n")

    print("The program was end.\n\n")

    print("Program execution time: " + str(round(time.time() - start_time, 3)))
