add_subdirectory(Game)
add_subdirectory(Core)

file(COPY Assets DESTINATION ${CMAKE_BINARY_DIR}/src)

add_executable(Beerventures main.cxx)
target_link_libraries(Beerventures ${SDL2_LIBRARIES} ${SDL2_IMAGE_LIBRARIES} ${SDL2TTF_LIBRARY} Core Game)