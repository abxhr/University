#include<stdio.h>
int main()
{
  int a,b,temp;
  printf("\n\n\tSWAAP");
  printf("\n\tEnter value of a: ");
  scanf("%d",&a);
  printf("\n\tEnter vlaue of b: ");
  scanf("%d",&b);

  temp=a;
  a=b;
  b=temp;

  printf("\n\tValue of a: %d",a);
  printf("\n\tValue of b: %d\n\n",b);

  return 0;

}