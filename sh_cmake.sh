#!/bin/bash
# Script to build project with CMake
cd $(dirname "$0")
export CDE_INCLUDE_PATH=/opt/include
export CDE_LIBRARY_PATH=/opt/lib
mkdir -p build
cd build
cmake ..
make

