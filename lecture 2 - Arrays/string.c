#include <cs50.h>
#include <stdio.h>
#include <string.h>

int main(void){

    string name;
    scanf("enter yout name: %s", name);

    for(int i = 0, n = strlen(name); i < n; i++){
        printf("%c", name[i]);
    }

    return 0;
}