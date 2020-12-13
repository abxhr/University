#include<stdio.h>
int main()
{
  int a;
  int *p=&a;
  printf("\nEnter the value: ");
  scanf("%d",&a);
  printf("\nEnter the new value: ");
  scanf("%d",&(*p));
  printf("\na= %d",*p);
  return 0;
}