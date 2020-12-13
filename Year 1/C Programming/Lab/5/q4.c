#include<stdio.h>
void main()
{
  char c;
  printf("\n\tEnter the character (Colour): ");
  scanf("%c",&c);
  if(c=='r' || c=='R')
    printf("\n\tO/P: RED\n");
  else if(c=='g' || c=='G')
    printf("\n\tO/P: GREEN\n");
  else if(c=='b'||c=='B')
    printf("\n\tO/P: BLUE/n");
  else
    printf("\n\tO/P: BLACK/n");
}