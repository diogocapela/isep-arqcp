#include <stdio.h>
#include <string.h>
#include "main.h"

int main(void)
{

    Student s;

    s.age = 28;
    s.number = 10;
    strcpy(s.name, "Diogo");
    strcpy(s.address, "Porto");

    Student *sPointer = &s;

    int newGrades[10] = {20, 20, 2, 2, 4, 1, 1, 1, 4, 1};

    update_grades(sPointer, newGrades);

    int minimum = 5;
    int greaterGrades[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    int result = locate_greater(sPointer, minimum, greaterGrades);

    printf("%s\n", "Grades updated!");
    printf("%s%d\n", "RESULTADO: ", result);

    int i = 0;
    while (i < 10)
    {
        printf("%d ", greaterGrades[i]);
        i++;
    }

    return 0;
}
