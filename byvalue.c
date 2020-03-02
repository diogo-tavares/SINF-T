#include <stdio.h>
#include <stdlib.h>

int sum(int a, int b){
    return a+b;
}

int main(){
    int x, y, z;
    scanf("%d %d", &x, &y); // reads from stdin value: 2 3
    z = sum(x, y);
}
