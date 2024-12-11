#include <stdio.h>

int main() {
    
    int array1[10] = {10, 31, 5, 7, 11, 3, 8, 40, 12, 4};
    int array2[10] = {19, 2, 3, 7, 5, 10, 9, 0, 6, 1};

    int count1 = 0, count2 = 0;

    // Count even numbers in array1
    for (int i = 0; i < 10; i++) {
        if (array1[i] % 2 == 0) {
            count1++;
        }
    }

    // Print the result for array1
    printf("Count of even numbers in array1 is: %d\n", count1);

    // Count even numbers in array2
    for (int i = 0; i < 10; i++) {
        if (array2[i] % 2 == 0) {
            count2++;
        }
    }

    // Print the result for array2
    printf("Count of even numbers in array2 is: %d\n", count2);

    return 0;
}
