#include<stdio.h>
void main()
{
int dec;
int convert(int dec);
printf("\nEnter the number : ");
scanf("%d",&dec);
int bin=convert(dec);
printf("\nBinary: %d",bin);
}

int convert(int dec)
{
  int bin=1;
  int q=0;
  int r=0;
  while(q!=0)
  {
    r=dec%2;
    q=dec/2;
    if(q>0)
    {
      if(!r)
        bin*=10;
      else
        bin=(bin*10)+1;
    }
    dec/=2;
  }
  return bin;
}