#include <stdio.h>
#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif

#include <time.h>

char *get_time() {
  time_t ltime;
  time(&ltime);
  return ctime(&ltime);
}

#ifdef __cplusplus
}
#endif
