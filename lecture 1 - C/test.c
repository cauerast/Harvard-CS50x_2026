#include <stdio.h> /// libraly
#include <cs50.h> /// libraly

// 

int main(void){
    int x;
    scanf("x value -> %i\n", &x);
    int y;
    scanf("y value -> %i\n", &y);

    if(x > y){
        printf("%d is greater then %d", x, y)
    } else if(x < y){
        printf("%d is greater then %d", y, x)
    } else{
        printf("%d = %d", x, y)
    }
}