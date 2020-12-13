#include<stdio.h>
int main()
{
  float mark[5];
  float sum=0;
  printf("\nEnter the marks: ");
  for(int i=0;i<5;++i)
  {
    scanf("%f", &mark[i]);
    sum+=mark[i];
  }
  float per=sum/5;
  printf("\nAverage: %f",per);
  if(per>=80)
    printf("\nDISTINCTION");
  else if(per>69 && per<79)
    printf("\nCLASS I");
  else if(per>59 && per<68)
    printf("\nCLASS II");
  else if(per>49 && per<58)
    printf("\nCLASS III");
  else if(per>38 && per<48)
    printf("\nAVERAGE");
  else
    printf("\nFAIL");
  return 0;
}