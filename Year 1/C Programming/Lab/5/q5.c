#include<stdio.h>
#include<string.h>
void main()
{
  char op;
  float a,b;
  printf("\n\tEnter the values: ");
  scanf("%f%f", &a,&b);
  getchar();
  printf("\n\tEnter the operator: ");
  scanf("%c",&op);
  printf("\n\tValue after calculation: ");
  if(op=='+')
    printf("%f\n\n",a+b);
  else if(op=='-')
    printf("%f\n\n",a-b);
  else if(op=='*')
    printf("%f\n\n",a*b);
  else if(op=='/')
    printf("%f\n\n",a/b);
  else
    printf("ERROR: Enter a valid operator (+,-,*,/)\n\n");
}