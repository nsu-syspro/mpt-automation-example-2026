#include <stdio.h>
#include <stdbool.h>

int main() {
  int x;
  while (true) {
    int res = scanf("%d", &x);
    if (res == 0) {
      return 0;
    }
    printf("%d\n", x * x);
  }
  return 1;
}
