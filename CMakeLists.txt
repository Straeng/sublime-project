cmake_minimum_required (VERSION 3.9)

project (sublime-test)

# Executable
add_subdirectory(src)

# Test
enable_testing ()
add_subdirectory (test)