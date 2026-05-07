#include <cs50.h>
#include <stdio.h>

int main(void){

    string s = "HI!"; // just 3 letters
    printf("%i %i %i %i\n", s[0], s[1], s[2], s[3])
    // 4th space (s[3]) is a 8bits 0 [\0 or 0 or 00000000] -- called a NUL char
    return 0;
}