#include <stdio.h>
#include <stdlib.h>

int main() {
  int n, *a;
  scanf("%d", &n); // number of values to read: 3
  a = (int *) malloc(n * sizeof(int));
  for (int i = 0; i < n; i++)
    scanf("%d", &a[i]); // reads from stdin values: 1 3 5
  free(a);
}
