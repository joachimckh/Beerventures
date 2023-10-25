add_executable(Beerventures main.cxx)
  
add_subdirectory(Core)

target_link_libraries(Beerventures ${SDL2_LIBRARIES}
    Core
  )