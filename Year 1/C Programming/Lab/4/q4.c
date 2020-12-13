int main()
{
  float a[5], sum=0;

  printf("\n\n\tDIVISION OF A STUDENT");

  for(int i=0;i<5;++i)
  {
    printf("\n\tEnter the marks for subject %d: ",i+1);
    scanf("%f",&a[i]);
    sum+=a[i];
  }

  float per=(sum/500.0)*100.0;
  printf("\n\tDivision: ");

  if(per<45)
    printf("Fail\n\n");

  else if(per>=45)
    printf("Second\n\n");

  else if(per>=60)
    printf("First\n\n");

  else if(per>80)
    printf("Distinction\n\n");

  return 0;
}