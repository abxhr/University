#include<stdio.h>
void main()
{
  float a,b,c;
  printf("\n\tEnter the values of a, b, c: ");
  scanf("%f%f%f",&a,&b,&c);
  printf("\n\tValue after the calculation: %f\n",((a+b)/(c*a))/((a+c)/2));
}