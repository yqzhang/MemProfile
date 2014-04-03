loop() {
  int a[1024];
  while (1) {
    int i;
    for (i = 0; i < 1024; i++) {
      int j = 1;
      a[i]++;
    }
  }
}

int global_a[20];

int main() {
  int main_a = 10;

  loop();
  
  return 0;
}
