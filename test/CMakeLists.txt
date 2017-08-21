add_executable (Test test.c)

find_package(cmocka REQUIRED)


include_directories(${CMOCKA_INCLUDE_DIRS})
target_link_libraries (Test ${CMOCKA_LIBS})

#add_test (NAME MyTest COMMAND Test)