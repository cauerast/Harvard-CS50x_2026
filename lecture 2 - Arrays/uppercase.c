#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int main(void){

    string name;
    scanf("enter your name: %s", &name);

    for(int i = 0, n = strlen(name); i < n; i++){

        if(name[i] >= 'a' && name[i] <= 'z'){
            printf("%c", name[i] - 32); // -32 bytes 
        } else {
            printf("%c", name[i]);
        }

        printf("\n");
    }
}

