#include<stdio.h>
int main()
{
  int n;
  printf("\nEnter the number of elements: ");
  scanf("%d",&n);
  int a[n];
  int blah[2]={0};
  void BigSmall(int [],int [],int);
  printf("\nEnter the elements: ");
  for(int i=0;i<n;++i)
    scanf("%d",&a[i]);
  BigSmall(a,&blah,n);
  for(int i=0;i<2;++i)
  {
    if(i==0)
      printf("\nThe biggest number is %d",blah[i]);
    else
      printf("\nThe smallest number is %d",blah[i]);
  }

  return 0;
}

void BigSmall(int a[],int bs[],int n)
{
  bs[0]=a[0];
  bs[1]=a[0];
  for(int i=1;i<n;++i)
  {
    if(a[i]>bs[0])
      bs[0]=a[i];
    else if(a[i]<bs[1])
      bs[1]=a[i];
  }
}