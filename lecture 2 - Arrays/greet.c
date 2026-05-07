#include <cs50.h>
#include <stdio.h>

int main(int argc, string argv[]){
    if(argc == 2){

        printf("hello, %s\n", argv[0]) // argv[0] aways outputs the program's name
        printf("hello, %s\n", argv[1])
    } else {

        printf("hello, world\n")
    }
}