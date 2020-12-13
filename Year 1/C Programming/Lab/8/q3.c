#include<stdio.h>
int main()
{
  int n;
  printf("\nEnter the number of elements: ");
  scanf("%d",&n);
  int a[n];
  int sum(int [],int);
  printf("\nEnter the elements: ");
  for(int i=0;i<n;++i)
    scanf("%d",&a[i]);
  printf("\nSum: %d",sum(a,n));
  return 0;
}

int sum(int a[],int n)
{
  int sum=0;
  for(int i=0;i<n;++i)
    sum+=a[i];
  return sum;
}