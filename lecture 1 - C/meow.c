#include <stdio.h> /// libraly
#include <cs50.h> /// libraly

int main(void){

    int n;
    while(true){
        n = get_int("whats is n? ");
        if(n < 0){
            continue;
        } else {
            break;
        }
    }

    for(int i = 0; i < n; i++){
        printf("meow!\n")
    }
}