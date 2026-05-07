#include <stdio.h>
#include <string.h>

int main(void){
    FILE *file = fopen("phonebook.csv", "a"); // a to add to a .csv

    if(file == NULL){
        return 1;
    }
    char *name;
    scanf("name: %s", name);
    char *number;
    scanf("Number: %s", name);


    fprintf(file, "%s, %s\n", name, number);
    fclose(file);

    return 0;
}