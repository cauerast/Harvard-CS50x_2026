#include <stdio.h>

int main(void){
    // dont use c for input string 
    char * s; // -> this could broke the code
    // system dont know how many bytes the string enter by the user will use on memory
    // we can use -> char * s[x] -> but we dont know x;
    scanf("%s", s);
    print("%s", s)
}