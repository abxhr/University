#include<stdio.h>
int main()
{
  float b, h;
  printf("\n\t\tAREA OF A RIGHT TRIANGLE ");

  printf("\n\tEnter the value for the base of the triangle: ");
  scanf("%f",&b);

  printf("\n\tEnter the value of the height of the triangle: ");
  scanf("%f",&h);

  printf("\n\tAREA: %f\n\n", (0.5*b*h));

  return 0;

}