#include<stdio.h>
int main()
{
  int m,n;
  printf("\nEnter the number of rows: ");
  scanf("%d",&m);
  printf("\nEnter the number of coulmns: ");
  scanf("%d",&n);
  int a[m][n];
  printf("\nEnter the elements: ");
  for(int i=0;i<m;++i)
    for(int j=0;j<n;++j)
      scanf("%d",&a[i][j]);

  printf("\nLeft diagonal: \n");
  for(int i=0;i<m;++i)
  {
    for(int j=0;j<n;++j)
    {
      if(i==j)
        printf("%d ",a[i][j]);
      else
        printf("* ");
    }
  printf("\n");
  }

  printf("\nRight diagonal: \n");
  for(int i=0;i<m;++i)
  {
    for(int j=0;j<n;++j)
    {
      if(i+j==(n-1))
        printf("%d ",a[i][j]);
      else
        printf("* ");
    }
  printf("\n");
  }

  return 0;
}