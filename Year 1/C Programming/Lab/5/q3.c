#include<stdio.h>
#include<string.h>
void main()
{
  float a,b;
  char o;
  printf("\n\tEnter the two values to calculate: ");
  scanf("%f%f",&a,&b);
  getchar();
  printf("\n\tEnter the operator: ");
  scanf("%c",&o);
  printf("\n\tValue after calculation: ");
  switch(o)
  {
    case '+': printf("%f", a+b);break;
    case '-': printf("%f", a-b);break;
    case '*': printf("%f", a*b);break;
    case '/': printf("%f", a/b);break;
    default: printf("ERROR: Please enter a valid operator (+,-,*,/)!\n");
  }
}