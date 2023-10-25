add_executable(Beerventures main.cxx)
  
add_subdirectory(Core)

file(COPY Assets DESTINATION ${CMAKE_BINARY_DIR}/src)

target_link_libraries(Beerventures ${SDL2_LIBRARIES}
    Core
)