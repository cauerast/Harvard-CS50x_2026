#include <stdio.h> /// libraly
#include <cs50.h> /// libraly

// 

int main(void){
    int x = get_int("x value -> \n");
    int y = get_int("y value -> \n");

    if(x > y){
        printf("%d is greater then %d", x, y)
    } else if(x < y){
        printf("%d is greater then %d", y, x)
    } else{
        printf("%d = %d", x, y)
    }
}