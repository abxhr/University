#include<stdio.h>
#include<string.h>
void main()
{
  char a[50], b[50];
  printf("\nEnter the first string: ");
  scanf("%s",a);
  getchar();
  printf("\nEnter the second string: ");
  scanf("%s",b);
  if(!(strcmp(a,b)))
    printf("\nThe strings are same");
  else
    printf("\nThe strings are not same");
}