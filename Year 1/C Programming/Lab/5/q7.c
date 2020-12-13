#include<stdio.h>
void main()
{
  int x,y;
  printf("\nEnter the value of x: ");
  scanf("%d",&x);
  printf("\nEnter the value of y: ");
  scanf("%d",&y);
  printf("\nQuadrant: ");

  if(y==0 && (x>0 || x<0) )
    printf("X-Axis\n");
  else if(x==0 && (y>0 ||y<0) )
    printf("Y-Axis\n");
  else if(x>0 && y>0)
    printf("1st Quadrant\n");
  else if(x<0 && y>0)
    printf("2nd Quadrant\n");
  else if(x<0 && y<0)
    printf("3rd Quadrant\n");
  else if(x>0 && y<0)
    printf("4th Quadrant\n");
  else if(x==0 && y==0)
    printf("Origin\n");

}