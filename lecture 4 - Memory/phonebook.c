#include <stdio.h>
#include <string.h>

int main(void){
    FILE *file = fopen("phonebook.csv", "w");

    char *name;
    scanf("name: %s", name);
    char *number;
    scanf("Number: %s", name);


    fprintf(file, "%s, %s\n", name, number);
    fclose(file);
}