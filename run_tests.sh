#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

export CDE_INCLUDE_PATH=/usr/local/include
export CDE_LIBRARY_PATH=/usr/local/lib

if [ ! -d "build" ]; then
    mkdir -p build
fi

cd build
cmake ..
make -j$(nproc)
cd ..

cd build
ctest --verbose
