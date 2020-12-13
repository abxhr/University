#include<stdio.h>
int main()
{
  int n;
  int check=0;
  int f=1;
  printf("Enter the value of n: ");
  scanf("%d",&n);
  while(check<n)
  {
    for(int i=f;i>0;--i)
      printf("%d ",i);
    ++f;
    ++check;
    printf("\n");
  }
  return 0;
}