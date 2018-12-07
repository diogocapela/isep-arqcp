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

    // int oldGrades[10] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
    int newGrades[10] = {9, 9, 9, 9, 9, 9, 9, 9, 9, 9};

    Student *sPointer = &s;

    update_grades(sPointer, newGrades);

    printf("%s\n", "Grades updated!");

    int i = 0;
    while (i < 10) {
        printf("%d ", sPointer->grades[i]);
        i++;
    }

    return 0;
}
