#include <stdio.h>
#include <stdbool.h>

int main() {
  while (true) {
    int x;
    int res = scanf("%d", &x);
    if (res <= 0) {
      return 0;
    }
    printf("%d\n", x * x);
  }
  return 1;
}
