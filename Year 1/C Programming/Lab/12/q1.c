#include<stdio.h>
struct employee
{
  char name[30];
  int age;
  float sal;
};

void main()
{
  struct employee emp;
  printf("\nEnter the name: ");
  scanf("%s",emp.name);
  printf("\nEnter the age: ");
  scanf("%d",&emp.age);
  printf("\nEnter the salary: ");
  scanf("%f",&emp.sal);

  printf("\nEmployee:\n");
  printf("Name: %s\n",emp.name);
  printf("Age: %d",emp.age);
  printf("\nSalary: %f",emp.sal);
}