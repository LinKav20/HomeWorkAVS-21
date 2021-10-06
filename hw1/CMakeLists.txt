cmake_minimum_required(VERSION 3.11)

project(avs)

set(CMAKE_CXX_STANDARD 11)

set(SRC_LIST main.cpp src/shapes/parallelepiped/Parallelepiped.cpp src/shapes/sphere/Sphere.cpp src/shapes/tetrahedron/Tetrahedron.cpp src/shapes/shape/Shape.cpp src/container/Container.cpp src/random/Random.cpp)

add_executable(${PROJECT_NAME} ${SRC_LIST})