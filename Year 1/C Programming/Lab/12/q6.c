#include<stdio.h>
struct student
{
  char name[30];
  int age;
  float perc;
};

void main()
{
  int n;
  printf("N? ");
  scanf("%d",&n);
  struct student st[n];
  struct student *p=(struct employee *)malloc(sizeof(struct student));
  p=&st;
  for(int i=0;i<n;++i)
  {
    printf("\nEnter the name: ");
    scanf("%s",(p+i)->name);
    printf("\nEnter the age: ");
    scanf("%d",&(p+i)->age);
    printf("\nEnter the percentage: ");
    scanf("%f",&(p+i)->perc);
  }

  for(int i=0;i<n;++i)
  {
    printf("\nStudent:\n");
    printf("Name: %s\n",(p+i)->name);
    printf("Age: %d",(p+i)->age);
    printf("\nPercentage: %f",(p+i)->perc);
  }
}