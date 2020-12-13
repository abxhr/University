#include<math.h>
#include<stdio.h>
int power(int);
void main()
{
  int a;
  double series(int);
  printf("\nEnter the value of a foe power func: ");
  scanf("%d",&a);
  printf("\nValue: %d",power(a));
  int n;
  printf("\nEnter the value of n: ");
  scanf("%d",&n);
  double num=series(n);
  printf("\nvalue: %lf",num);
}

int power(int a)
{
  return pow(2,a);
}

double series(int n)
{
  double sum=0;
  float num,den;
  for(int i=0;i<=n;i++)
  {
    num=3+(2*i);
    den=power(i);
    sum+=(num/den);
  }
  return sum;
}