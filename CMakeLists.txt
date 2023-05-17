# Set required version of CMake.
cmake_minimum_required(VERSION 3.22)

# Project name, it can be later accessed by ${CMAKE_PROJECT_NAME}.
project(app)
message("Building project '${CMAKE_PROJECT_NAME}'")

# Set directory where all source files are (.h and .cpp).
message("Using sources path: '${PROJECT_SOURCE_DIR}'")
include_directories(${PROJECT_SOURCE_DIR})

# Setting path where output directory will be stored.
# By default it's stored in CMake configuration path.
# Has to be before "add_executable" to work.
message("Setting output executable directory: '${PROJECT_SOURCE_DIR}'")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR})

# Create executable.
message("Setting executable name to: '${CMAKE_PROJECT_NAME}'")
add_executable(${CMAKE_PROJECT_NAME} src/main.cpp src/foo.cpp)
