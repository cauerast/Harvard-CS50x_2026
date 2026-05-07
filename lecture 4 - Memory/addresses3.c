#include <stdio.h>

// string = char *
// char *x = "cs50"; char makes a loop until the end of the word x (\0).
// in c, u can create a struct like ->

// typedef char *string;
// now you can use string keyword like a type

int main(void){
    char *s = "HI!";
    print("%p\n", s);
    print("%p\n", s[0]);
    print("%p\n", s[1]);
    print("%p\n", s[2]);
    print("%p\n", s[3]);
}