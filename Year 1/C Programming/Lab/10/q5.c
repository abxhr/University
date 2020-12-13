#include<stdio.h>
int main()
{
 int a[5],b[5];
 printf("\nEnter the values of the first array: ");
 for(int i=0;i<5;++i)
   scanf("%d",a+i);
 for(int i=0;i<5;++i)
   *(b+i)=*(a+i);

 printf("\n\nArray A: \n");
 for(int i=0;i<5;++i)
   printf("%d ",*(a+i));
 printf("\nArray B: \n");
 for(int i=0;i<5;++i)
   printf("%d ",*(b+i));
 return 0;
}