#include<stdio.h>
int main()
{
  int i,y,x;
  printf("\n\t\ty\t\tx\t\ti\n");
  for(int i=1;i<7;++i)
  {
    for(float j=5.5;j<=12.5;j+=0.5)
      {
        printf("\t\t%d\t\t%f\t\t%f\n",i,j,(2+i+(0.5*j)));
      }
  }
  return 0;
}