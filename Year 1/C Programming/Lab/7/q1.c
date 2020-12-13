#include<stdio.h>
int main()
{
  float arr[5];
  float sum=0.0;
  printf("\nEnter the elements: ");
  for(int i=0;i<5;++i)
  {
    scanf("%f",&arr[i]);
    sum+=arr[i];
  }
  printf("\nAverage: %f",sum/5);
  return 0;
}