cmake_minimum_required (VERSION 3.9)

project (sublime-project)

set(CMAKE_C_FLAGS "-Wall -Werror -Wpedantic -std=c11")

# Functionality
add_subdirectory(src)

# Test
enable_testing ()
add_subdirectory (test)