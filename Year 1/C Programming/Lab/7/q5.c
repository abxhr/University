#include<stdio.h>
int main()
{
  int arr[2][3][2];
  printf("\nEnter the elements: ");
  for(int i =0;i<2;++i)
    for(int j=0;j<3;++j)
      for(int k=0;k<2;++k)
        scanf("%d",&arr[i][j][k]);
  printf("\nArray: \n");
  for(int i=0;i<2;++i)
  {
    for(int j=0;j<3;++j)
    {
      for(int k=0;k<2;++k)
      {
        printf("%d  ",arr[i][j][k]);
      }
    printf("\n");
    }
  printf("\n");
  }
  return 0;
}