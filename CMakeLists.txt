cmake_minimum_required(VERSION 3.14)
project(raylib_cpp_example)

# raylib
include(FetchContent)
FetchContent_Declare(
    raylib
    URL https://github.com/raysan5/raylib/archive/refs/tags/5.5.tar.gz
    DOWNLOAD_EXTRACT_TIMESTAMP True #This option is not required but suppresses a warning
)
FetchContent_MakeAvailable(raylib)

# raylib-cpp
FetchContent_Declare(
    raylib_cpp
    GIT_REPOSITORY https://github.com/RobLoach/raylib-cpp.git
    GIT_TAG v5.5.0
)
FetchContent_MakeAvailable(raylib_cpp)

# This is the main part:
set(SOURCES main.cpp)
add_executable(${PROJECT_NAME} ${SOURCES})
set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 11)
target_link_libraries(${PROJECT_NAME} PUBLIC raylib raylib_cpp)
target_include_directories(${PROJECT_NAME} PUBLIC "${CMAKE_BINARY_DIR}/_deps/raylib-src/src" "${CMAKE_BINARY_DIR}/_deps/raylib_cpp-src/include")

set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_BINARY_DIR}/bin/Debug RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR}/bin/Release)

# That's it! You should have an example executable that you can run. Have fun!
