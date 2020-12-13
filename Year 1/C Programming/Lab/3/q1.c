#include<stdio.h>
int main()
{
  float marks[5],percent,avg,sum;
  printf("\n\t\t\tPERCENTAGE AND GRADE CALCULATOR\n");

  for(int i=0;i<5;++i)
    {
    i+=1;
    printf("\n\tEnter the marks of subject %d: ",i);
    i-=1;
    scanf("%f",&marks[i]);
    sum+=marks[i];
    }

  avg=sum/5.0;
  percent=(sum/500.0)*100.0;

  printf("\n\tAverage= %.2f%",avg);
  printf("\n\tPercentage= %.2f% \n",percent);

  return 0;
}