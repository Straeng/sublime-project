include_directories("${PROJECT_SOURCE_DIR}/src")

add_executable(test_func test_func.c)
add_dependencies(test_func test_func)
add_test(test_func test_func)
target_link_libraries(test_func func cmocka)


#file(GLOB SOURCES *.c)
#add_executable(Prog ${SOURCES})