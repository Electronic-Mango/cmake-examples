#!/bin/bash

# Configure CMake in "build" subdirectory.
mkdir -p build/
cd build/ || exit
cmake ../

# Build project still in "build" subdirectory.
cmake --build .

# Build project in project root directory, when CMake was configured in "build".
cd ../
cmake --build build/
