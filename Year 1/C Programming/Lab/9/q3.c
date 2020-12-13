#include<stdio.h>
void main()
{
  int coord(int,int);
  int x,y;
  printf("\nEnter the x coordinate: ");
  scanf("%d",&x);
  printf("\nEnter the y coordinate: ");
  scanf("%d",&y);
  int cord=coord(x,y);
  if(cord==1)
    printf("\nIt is in the x axis");
  else if(cord==0)
    printf("\nIt is in the y axis");
  else if(cord==3)
    printf("\nIt is in the 1 quadrant");
  else
    printf("\nIt is in the %d quadrant",cord);
}

int coord(int x,int y)
{
  if(x==0)
    return 0;
  else if(y==0)
    return 3;
  else if(x<0&&y>0)
    return 2;
  else if(x<0&&y<0)
    return 3;
  else if(x>0&&y<0)
    return 4;
}