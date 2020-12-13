#include<stdio.h>
int main()
{
  int m,n;
  printf("\nEnter the number of rows: ");
  scanf("%d",&m);
  printf("\nEnter the number of columns: ");
  scanf("%d",&n);
  int a[m][n];
  printf("\nEnter the elements: ");
  for(int i=0;i<m;++i)
    for(int j=0;j<n;++j)
      scanf("%d",&a[i][j]);
  printf("\nSum of Rows: \n");
  int sum=0;
  for(int i=0;i<m;++i)
  {
    for(int j=0;j<n;++j)
    {
      sum+=a[i][j];
    }
  printf("\nRow %d: %d\n",i,sum);
  sum=0;
  }
  printf("\nSum of columns: \n");
  for(int j=0;j<n;++j)
  {
    for(int i=0;i<m;++i)
    {
      sum+= a[i][j];
    }
  printf("\nColumn %d: %d\n",j,sum);
  sum=0;
  }

  return 0;
}