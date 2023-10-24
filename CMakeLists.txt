cmake_minimum_required(VERSION 3.7)

project(Beerventures)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

add_executable(Beerventures main.cxx)
target_link_libraries(Beerventures ${SDL2_LIBRARIES})