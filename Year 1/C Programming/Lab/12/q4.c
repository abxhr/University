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
  struct employee *p=&emp;
  printf("\nEnter the name: ");
  scanf("%s",p->name);
  printf("\nEnter the age: ");
  scanf("%d",&p->age);
  printf("\nEnter the salary: ");
  scanf("%f",&p->sal);

  printf("\nEmployee:\n");
  printf("Name: %s\n",p->name);
  printf("Age: %d",p->age);
  printf("\nSalary: %f",p->sal);
}