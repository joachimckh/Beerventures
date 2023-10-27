add_subdirectory(BECS)
add_library(Game "")

target_sources(Game
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/BGame.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BGameObject.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BTextureManager.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BMap.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BVector2D.cxx
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/BGame.h
    ${CMAKE_CURRENT_LIST_DIR}/BGameObject.h
    ${CMAKE_CURRENT_LIST_DIR}/BTextureManager.h
    ${CMAKE_CURRENT_LIST_DIR}/BMap.h
    ${CMAKE_CURRENT_LIST_DIR}/BVector2D.h
  )
target_link_libraries(Game PUBLIC BECS)
target_include_directories(Game
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )