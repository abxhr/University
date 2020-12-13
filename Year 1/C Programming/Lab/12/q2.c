#include<stdio.h>
struct student
{
  char name[30];
  int age;
  float perc;
};

void main()
{
  struct student st;
  printf("\nEnter the name: ");
  scanf("%s",st.name);
  printf("\nEnter the age: ");
  scanf("%d",&st.age);
  printf("\nEnter the percentage: ");
  scanf("%f",&st.perc);

  printf("\nStudent:\n");
  printf("Name: %s\n",st.name);
  printf("Age: %d",st.age);
  printf("\nPercentage: %f",st.perc);
}