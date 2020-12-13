#include<stdio.h>
void main()
{
  int a[5];
  printf("\nEnter 5 elements: ");
  for(int i=0;i<5;++i)
  {
    scanf("%d",a+i);
  }
  for(int i=0;i<5;++i)
  {
    printf("\nValue: %d  Address: %x",*(a+i),a+i);
  }
}