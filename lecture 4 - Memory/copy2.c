#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int main(void){
    char *s;
    scanf("s: %c", &s);

    char *t = malloc(strlen(s) + 1); // 4 bytes for a word w/ 3 chars because \0

    for(int i = 0, n = strlen(s); i < n + 1; i++){
        t[i] = s[i];
    }

    t[0] = toupper(t[0]);

    printf("s: %s\n", s);
    printf("t: %s\n", t);

    //  -- DIFFERENT! -- 
    // s: hi!
    // t: Hi!

    free(t);
}