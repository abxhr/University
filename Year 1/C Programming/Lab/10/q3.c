#include<stdio.h>
int main()
{
  void swap(int *,int *);
  int a,b;
  printf("\nEnter the values: ");
  scanf("%d%d",&a,&b);
  swap(&a,&b);
  printf("\nA= %d",a);
  printf("\nB= %d",b);
  return 0;
}

void swap(int *a,int *b)
{
  *a=*a+*b;
  *b=*a-*b;
  *a=*a-*b;
}