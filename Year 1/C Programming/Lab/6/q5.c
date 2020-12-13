#include<stdio.h>
int main()
{
  int n;
  printf("\nEnter the value of the number: ");
  scanf("%d",&n);
  printf("\nDivisors: ");
  for(int i=1;i<=n;++i)
  {
    if(n%i==0)
      printf("%d ",i);
  }
  return 0;
}