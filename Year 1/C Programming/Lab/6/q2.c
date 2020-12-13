#include<stdio.h>
int main()
{
  int n;
  int sum=1;
  int a[2]={0,1};
  printf("Enter the value for n: ");
  scanf("%d",&n);
  printf("\n\nSeries: \n0");
  while(sum<=n)
  {
    printf("\n%d",sum);
    sum=a[0]+a[1];
    a[0]=a[1];
    a[1]=sum;
  }
  return 0;
}