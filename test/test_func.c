#include <stdarg.h>
#include <stddef.h>
#include <setjmp.h>
#include <cmocka.h>
 
#include "func.h"
 
void test_func_add()
{
    int result = func_add(1,2);
    assert_int_equal(result, 3);
#if 0
  state *s;
 
  s = state_new();
  assert_non_null(s);
  assert_int_equal(state_get(s), 0);
  state_free(s);
#endif
}

#if 0 
void test2()
{

  state *s;
  int e;
 
  s = state_new();
  assert_non_null(s);
 
  e = state_set(s, 5);
  assert_int_equal(e, 0);
  assert_int_equal(state_get(s), 5);
 
  e = state_set(s, 42);
  assert_int_equal(e, -1);
  assert_int_equal(state_get(s), 5);
}
#endif
 
int main(void)
{
  const struct CMUnitTest tests[] = {
    cmocka_unit_test(test_func_add),
    //unit_test(test2),
  };
 
  return cmocka_run_group_tests(tests, NULL, NULL);
}