#include<stdio.h>
#include<ctype.h>
int main()
{
  printf("Press enter to display\n");
  getchar();
  printf("ASCII\tCharacter\n");
  int i=0;
  while(i<256)
  {
    printf("%d\t%c\n",i,i);
    i++;
  }
  return 0;
}