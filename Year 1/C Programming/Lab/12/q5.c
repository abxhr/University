#include<stdio.h>
struct student
{
  char name[30];
  int age;
  float perc;
};

void main()
{
  struct student *p=(struct employee *)malloc(sizeof(struct student));
  printf("\nEnter the name: ");
  scanf("%s",p->name);
  printf("\nEnter the age: ");
  scanf("%d",&p->age);
  printf("\nEnter the percentage: ");
  scanf("%f",&p->perc);

  printf("\nStudent:\n");
  printf("Name: %s\n",p->name);
  printf("Age: %d",p->age);
  printf("\nPercentage: %f",p->perc);
}
