add_library(Core "")

target_sources(Core
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/BInventory.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BUnit.cxx
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/BInventory.h
    ${CMAKE_CURRENT_LIST_DIR}/BUnit.h
    ${CMAKE_CURRENT_LIST_DIR}/BObject.h
  )
target_include_directories(Core
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )