#include <cs50.h>
#include <stdio.h>
// for today uses -> we uses strlen() fn in <string.h> C libraly.

int main(void){

    string name;
    scanf("enter your name: %s", &name);

    int n = 0;
    while(name[n] != "\0"){
        n++;
    }
    printf("%i", n)
    
    return 0;
}
