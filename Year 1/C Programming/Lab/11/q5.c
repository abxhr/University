#include<stdio.h>
#include<string.h>
void main()
{
  char a[50];
  char vo[10]={'a','e','i','o','u','A','E','I','O','U'};
  printf("\nEnter the string: ");
  gets(a);
  int vowel=0;
  int conso=0;
  int flag=0;
  for(int i=0;a[i]!='\0';++i)
  {
    for(int j=0;j<10;++j)
    {
      if(a[i]==vo[j])
        {
        ++vowel;
        flag=1;
        }
    }
    if(!flag)
      ++conso;
    flag=0;
  }
  printf("\nVowels: %d",vowel);
  printf("\nConsonants: %d",conso);
}