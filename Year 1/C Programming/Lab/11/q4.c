#include<stdio.h>
#include<string.h>
void main()
{
   int i;
  char first[3][50];
  char middle[3][50];
  char last[3][50];
  for(i=0;i<3;++i)
  {
    printf("\nEnter the first name of person %d: ",i+1);
    gets(first[i]);
    printf("\nEnter the middle name: ");
    gets(middle[i]);
    printf("\nEnter the last name: ");
    gets(last[i]);
  }

  for(int i=0;i<3;++i)
  {
    printf("\nName of person %d: ", i+1);
    strcat(first[i]," ");
    strcat(first[i],middle[i]);
    strcat(first[i]," ");
    strcat(first[i],last[i]);
    printf("%s\n",first[i]);
  }

}