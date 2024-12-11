#include <stdio.h>

int main(int argc, char **argv){
    // int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int arr[10] = {7, 2, 5, 11, 4, 6, 1, 1, 8, 3};
    int sum = 0;
    float avg;

    for (int i = 0; i < 10; i++) {
        sum += arr[i];
    }

    avg = sum / 10.0;

    printf("The average is: %.2f\n", avg);

    return 0;
}