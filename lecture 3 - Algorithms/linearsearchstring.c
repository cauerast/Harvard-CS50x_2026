#include <stdio.h>
#include <string.h>

int main(void){

    string s;
    scanf("letter -> %s", s);
    string strings[] = {"a", "b", "c", "d"};

    for(int i = 0; i < 4; i++){

        if(strcmp(strings[i], s) == 0){
            printf("found \n");
            return 0;
        }
    }

    printf("not found");
    return 1;
}