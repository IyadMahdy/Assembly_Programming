#include <stdio.h>

int main() {
    int a1[10] = {10, 31, 5, 7, 11, 3, 8, 40, 12, 4};
    int a2[10] = {11, 2, 3, 7, 5, 10, 9, 22, 6, 1};
    int min=a1[0];
    for (int i = 0; i < 10; ++i) {
        if(a1[i]<min)min = a1[i];
    }
    printf("Min element is: %d\n",min);
    min=a2[0];
    for (int i = 0; i < 10; ++i) {
        if(a2[i]<min)min = a2[i];
    }
    printf("Min element is: %d\n",min);
    return 0;
}
