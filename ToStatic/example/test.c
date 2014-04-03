#include <stdlib.h>

void loop() {
  int a[1024];
  while (1) {
    int i;
    for (i = 0; i < 1024; i++) {
      int j = 1;
      a[i]++;
    }
  }
}

void dynamic(double param_double) {
  int* pt = (int*) malloc(10 * sizeof(int));
  free(pt);
}

const int global_const[20];
static double global_static[40];
char global_dim[19][29];

int main() {
  static int main_static = 10;
  const double main_const = 20;

  loop();
  
  return 0;
}
