#include<stdio.h>
int main()
{
  int arr1[10],arr2[10];
  int flag=1;
  printf("\nEnter the elements of array 1: ");
  for(int i=0; i<10;++i)
    scanf("%d", &arr1[i]);
  printf("\nEnter the elements of the array 2: ");
  for(int i=0; i<10;++i)
    scanf("%d",&arr2[i]);
  for(int i=0;i<10;i++)
    if(arr1[i]==arr2[i])
      continue;
    else
      {
        flag=0;
        break;
      }
  if(flag==1)
    printf("\nINDENTICAL\n");
  else
    printf("\nNOT IDENTICAL\n");
  return 0;
}