#include <stdio.h>

int main(void){

    int n;
    scanf("enter the number of elements: %i", &n);

    int numbers[n];
    for(int i = 0; i < n; i++){
        scanf("enter a number: %i", &numbers[i]);
    }

    int x;
    scanf("enter the number to search for: %i", &x);

    for(int i = 0; i < n; i++){
        if(numbers[i] == x){
            printf("Found %i at index %i\n", x, i);
            return 0;
        }
    }
    printf("%i not found in the array\n", x);
    return 1;
}