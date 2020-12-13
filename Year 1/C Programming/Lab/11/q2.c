#include<stdio.h>
void main()
{
  char a[50];
  printf("\nEnter the string: ");
  scanf("%s",a);
  int i;
  for(i=0;a[i]!='\0';++i);
  printf("\nLength: %d",i);
}