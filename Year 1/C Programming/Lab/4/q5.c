#include<stdio.h>
//#include<ctype.h>
int main()
{
  char c;
  printf("\n\n\tEnter a character to convert to lower case: ");
  scanf("%c",&c);

  c=tolower(c);

  printf("\n\tCharacter: %c\n",c);

  return 0;
}