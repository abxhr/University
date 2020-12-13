#include<stdio.h>
#include<string.h>
void main()
{
  char a[50];
  printf("\nEnter the string: ");
  scanf("%s",a);
  int isPalindrome(char []);
  if(isPalindrome(a))
    printf("\nThe given string is a palindrome");
  else
    printf("\nThe given string is not a palindrome");
}

int isPalindrome(char a[])
{
  int flag=1;
  int n=strlen(a);
  for(int i=0;i<n/2;++i)
  {
    if(a[i]==a[(n-1)-i])
      continue;
    else
      flag=0;
  }
  return flag;
}