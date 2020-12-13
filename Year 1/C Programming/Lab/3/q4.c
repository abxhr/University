#include<stdio.h>
int main()
{
  int num,sum=0,cur;
  printf("\n\t\tSUM  OF THE DIGITS");

  printf("\n\tEnter the number= ");
  scanf("%d",&num);

  for(int i=0;num>0;++i)
    {
    cur=num%10;
    sum+=cur;
    num=num/10;
    }

  printf("\n\tThe sum of the digits= %d \n", sum);

  return 0;
}