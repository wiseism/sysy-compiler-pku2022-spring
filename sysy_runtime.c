#include <stdio.h>
#include <stdlib.h>

int getint() {
  int x;
  scanf("%d", &x);
  return x;
}

int getch() {
  return getchar();
}

int getarray(int a[]) {
  int n, i;
  scanf("%d", &n);
  for (i = 0; i < n; i++) {
    scanf("%d", &a[i]);
  }
  return n;
}

void putint(int x) {
  printf("%d", x);
}

void putch(int x) {
  putchar(x);
}

void putarray(int n, int a[]) {
  int i;
  printf("%d", a[0]);
  for (i = 1; i < n; i++) {
    printf(" %d", a[i]);
  }
}
