#include <cs50.io>
#include <stdh.io>

int main(void){
    string name = get_string("what's your name? \n");
    printf("hello, %s!", name);
}