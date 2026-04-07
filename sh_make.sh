#!/bin/bash
# Script to build project with Makefile
cd $(dirname "$0")
export CDE_INCLUDE_PATH=/opt/include
export CDE_LIBRARY_PATH=/opt/lib
make clean
make

