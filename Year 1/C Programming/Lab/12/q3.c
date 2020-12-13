#include<stdio.h>
struct student
{
  char name[30];
  int age;
  float perc;
};

void main()
{
  struct student st[3];
  for(int i=0;i<3;++i)
  {
    printf("\nEnter the name of student %d: ",i+1);
    scanf("%s",st[i].name);
    printf("\nEnter the age: ");
    scanf("%d",&st[i].age);
    printf("\nEnter the percentage: ");
    scanf("%f",&st[i].perc);
  }

  for(int i=0;i<3;++i)
  {
    printf("\nStudent %d:\n",i+1);
    printf("Name: %s\n",st[i].name);
    printf("Age: %d",st[i].age);
    printf("\nPercentage: %f",st[i].perc);
  }
}