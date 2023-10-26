add_library(BECS "")

target_sources(BECS
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/BComponents.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BECS.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BTransformComponent.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BSpriteComponent.cxx
    ${CMAKE_CURRENT_LIST_DIR}/BKeyBoardController.cxx
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/BComponents.h
    ${CMAKE_CURRENT_LIST_DIR}/BECS.h
    ${CMAKE_CURRENT_LIST_DIR}/BTransformComponent.h
    ${CMAKE_CURRENT_LIST_DIR}/BSpriteComponent.h
    ${CMAKE_CURRENT_LIST_DIR}/BKeyBoardController.h
  )
target_include_directories(BECS
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
  )