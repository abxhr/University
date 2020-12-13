#include<stdio.h>
void main()
{
  int a;
  printf("\n\tEnter the number (1 digit): ");
  scanf("%d",&a);
  printf("\n\tNUMBER: ");
  switch(a)
  {
    case 1: printf("One\n");break;
    case 2: printf("Two\n");break;
    case 3: printf("Three\n");break;
    case 4: printf("Four\n");break;
    case 5: printf("Five\n");break;
    case 6: printf("Six\n");break;
    case 7: printf("Seven\n");break;
    case 8: printf("Eight\n");break;
    case 9: printf("Nine\n");break;
    default: printf("ERROR: Enter a valid number(1-9)!\n\n");
  }

}