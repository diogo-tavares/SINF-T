#include <stdio.h>
#include <stdlib.h>

void sum(int a, int b, int *c){
    *c = a+b;
}

int main(){
    int x, y, z;
    scanf("%d %d", &x, &y); // reads from stdin value: 2 3
    sum(x, y, &z);
}
