#include<stdio.h>
int main()
{
  int arr[4][4];
  int temp;
  printf("\nEnter the elements: ");
  for(int i=0; i<4;++i)
    for(int j=0;j<4;++j)
      scanf("%d",&arr[i][j]);

  printf("\nArray: \n");
  for(int i=0;i<4;++i)
    {
      for(int j=0;j<4;++j)
        printf("%d ",arr[i][j]);
    printf("\n");
    }
  printf("\nArray after transpose: \n");
  for(int i=0;i<2;++i)
    for(int j=0;j<2;++j)
    {
      temp=arr[i][j];
      arr[i][j]=arr[j][i];
      arr[j][i]=temp;
    }
  for(int i=0;i<4;++i)
  {
    for(int j=0;j<4;++j)
    {
      printf("%d  ",arr[j][i]);
    }
  printf("\n");
}
}