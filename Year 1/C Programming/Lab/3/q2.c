#include<stdio.h>
int main()
{
  float r,area,perimeter,pi=3.14;
  printf("\n\t\t\tAREA AND PERIMETER OF CIRCLE\n");

  printf("\tEnter the value of the radius of the circle: ");
  scanf("%f",&r);

  area=pi*r*r;
  perimeter=2*pi*r;

  printf("\n\tArea of the circle= %.2f", area);
  printf("\n\tPerimeter of the circle= %.2f \n", perimeter);

  return 0;
}