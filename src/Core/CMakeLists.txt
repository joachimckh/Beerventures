add_library(Core "")

target_sources(Core
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/Inventory.cxx
    ${CMAKE_CURRENT_LIST_DIR}/Unit.cxx
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/Inventory.h
    ${CMAKE_CURRENT_LIST_DIR}/Unit.h
    ${CMAKE_CURRENT_LIST_DIR}/Object.h
  )
target_include_directories(Core
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )