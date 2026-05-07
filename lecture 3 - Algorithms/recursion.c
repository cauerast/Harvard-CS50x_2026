#include <stdio.h>
#include <cs50.h>

void draw(int n);

int main(void){
    int height;
    scanf("Height: %i", &height);

    draw(height);
}

void draw(int n){

    // base case
    if(n <= 0){
        return;
    }

    draw(n - 1);

    // print one more row
    for(int i = 0 ; i < n; i++){
        print("*");
    }
    printf("\n");
}