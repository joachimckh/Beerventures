add_library(Core "")

target_sources(Core
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/BColor.cxx  
    ${CMAKE_CURRENT_LIST_DIR}/BObject.cxx  
    ${CMAKE_CURRENT_LIST_DIR}/BUnit.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BPlayer.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BInventory.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BHUD.cxx
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/BColor.h
    ${CMAKE_CURRENT_LIST_DIR}/BObject.h
    ${CMAKE_CURRENT_LIST_DIR}/BUnit.h  
    ${CMAKE_CURRENT_LIST_DIR}/BPlayer.h
    ${CMAKE_CURRENT_LIST_DIR}/BInventory.h
    ${CMAKE_CURRENT_LIST_DIR}/BHUD.h
    

  )
target_include_directories(Core
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )