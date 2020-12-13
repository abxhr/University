#include<stdio.h>
void read();
void write(int *,int *);
int main()
{
  read();
  return 0;
}

void read()
{
  int a,b;
  printf("\nEnter the values: ");
  scanf("%d%d",&a,&b);
  write(&a,&b);
}

void write(int *a,int *b)
{
  int c;
  c=*a+*b;
  printf("\nSum: %d",c);
  printf("\nA= %d B=%d",*a,*b);
}