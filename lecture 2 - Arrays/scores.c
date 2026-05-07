#include <cs50.h>
#include <stdio.h>

float avarage(int length, int array[]){
    int sum = 0
    for(int i = 0; i < length; i++){
        sum += array[i];
    }
    float avarage = sum / length

}

int main(void){
    const int n;
    scanf("%i", &n)

    int scores[n];

    for(int i = 0; i < n; i++){
        scores[i];
        scanf("%i", &scores[i]);
    }

    printf("avarage %f\n", avarage(n, scores));
    return 0;
}