#include <stdio.h>
#include <stdlib.h>
#include <cs50.h>

typedef struct node{
    int number;
    struct node *next;
} node;

int main(void){
    node *list = NULL;
   
    for(int i = 0; i < 3; i++){
        node *n = malloc(sizeof(node));

        if(n == NULL){
            return 1;
        }

        //(*n).next == go to the n and apoint to the next item;
        // (*n).next = n->next 
        n->number = get_int("Number: "); 
        n->next = NULL;

        // prepend node to list
        n->next = list;
        list = n;

    }
    // print numbers
    node *ptr = list;
    while(ptr != NULL){
        printf("%i\n", ptr->number);
        ptr = ptr->next;
    }
    
    return 0;

}