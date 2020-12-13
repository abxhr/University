#include<stdio.h>
#include<string.h>
int main()
{
  char c;
  void colours(char);
  printf("\nEnter the character: ");
  scanf("%c",&c);
  colours(c);
  return 0;
}

void colours(char c)
{
  c=toupper(c);
  char colour[7][15]={"Violet","Indigo","Blue","Green","Yellow","Orange","Red"};
  for(int i=0;i<7;++i)
  {
    if(colour[i][0]==c)
    {
      for(int j=0;j<15;++j)
        printf("%c",colour[i][j]);
    }
  }
}