int main()
{
  float basic, hra, allow, sal=0;
  printf("\n\t\tTOTAL SALARY");

  printf("\n\tEnter the basic of the employ: ");
  scanf("%f", &basic);
  printf("\n\tEnter the allowance of the employ: ");
  scanf("%f", &allow);

  hra=0.4*basic;
  sal+=allow+hra+basic;

  printf("\n\tThe total salary of the employ: %.2f \n\n", sal);

  return 0;
}