#include<stdio.h>
int main()
{
  int arr1[3][3],arr2[3][3],sa[3][3];
  printf("\nEnter the elements of array 1: ");
  for(int i=0;i<3;++i)
    for(int j=0;j<3;++j)
      scanf("%d",&arr1[i][j]);
  printf("\nEnter the elements of array 2: ");
  for(int i=0;i<3;++i)
    for(int j=0; j<3;++j)
      scanf("%d",&arr2[i][j]);
  printf("\nArray after addition: \n");
  for(int i =0;i<3;++i)
    {
      for(int j=0;j<3;++j)
      {
        sa[i][j]=arr1[i][j]+arr2[i][j];
        printf("%d  ",sa[i][j]);
      }
    printf("\n");
    }
  printf("\n\nArray after subtraction: \n");
  for(int i =0;i<3;++i)
  {
    for(int j=0;j<3;++j)
    {
      sa[i][j]=arr1[i][j]-arr2[i][j];
      printf("%d  ",sa[i][j]);
    }
  printf("\n");
  }
  return 0;
}