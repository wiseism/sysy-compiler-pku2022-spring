cmake_minimum_required(VERSION 3.13)
project(SysYCompiler)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wno-register")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -std=c11")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

find_package(FLEX REQUIRED)
find_package(BISON REQUIRED)

flex_target(SysYLexer
    ${CMAKE_SOURCE_DIR}/src/sysy.l
    ${CMAKE_BINARY_DIR}/sysy.lex.cpp
)

bison_target(SysYParser
    ${CMAKE_SOURCE_DIR}/src/sysy.y
    ${CMAKE_BINARY_DIR}/sysy.tab.cpp
    DEFINES_FILE ${CMAKE_BINARY_DIR}/sysy.tab.hpp
)

add_flex_bison_dependency(SysYLexer SysYParser)

include_directories(
    ${CMAKE_SOURCE_DIR}/src
    ${CMAKE_BINARY_DIR}
    $ENV{CDE_INCLUDE_PATH}
)

link_directories(
    $ENV{CDE_LIBRARY_PATH}/native
)

add_executable(compiler
    ${CMAKE_SOURCE_DIR}/src/main.cpp
    ${BISON_SysYParser_OUTPUTS}
    ${FLEX_SysYLexer_OUTPUTS}
)

target_link_libraries(compiler
    koopa
    pthread
    dl
)

