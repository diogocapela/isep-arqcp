#include <stdio.h>
#include "main.h"

int main(void) {

    // Initialize an array of 5 positions
    Student stu[5];

    // Declare a pointer
    Student* ptr;

    ptr = &stu[0];
    fill_student(ptr, 28, 0, "Diogo 0", "Porto 0");
    
    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);

    ptr = &stu[1];
    fill_student(ptr, 28, 1, "Diogo 1", "Porto 1");

    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);

    ptr = &stu[2];
    fill_student(ptr, 28, 2, "Diogo 2", "Porto 2");

    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);

    ptr = &stu[3];
    fill_student(ptr, 28, 3, "Diogo 3", "Porto 3");

    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);

    ptr = &stu[4];
    fill_student(ptr, 28, 4, "Diogo 4", "Porto 4");

    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);

    return 0;

}
