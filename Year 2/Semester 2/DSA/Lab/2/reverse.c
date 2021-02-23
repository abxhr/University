#include <stdio.h>
#include <stdlib.h>

int*stack;
int stack_size;
int top=-1;

int isEmpty()
{
	if (top == -1)
	{
		return 1;
	}
	return -1;
}

int stackSize()
{
	return top+1;
}

int stackTop()
{
	if (isEmpty() == 1)
	{
		return -1;
	}
	return stack[top];
}

int isFull()
{
	if (stack_size == stackSize())
	{
		return 1;
	}
	return -1;
}

int push(int x)
{
	if (stack_size == stackSize())
	{
		return -1;
	}
	stack[++top] = x;
	return 1;
}

int pop()
{	
	if (top == -1)
	{
		return -1;
	}
	return stack[top--];
}

int main()
{
    printf("Enter the max size of the array: ");
    scanf("%d", &stack_size);
    stack_size=(int)(0.7*(stack_size+2));
	stack=(int*)calloc(sizeof(int), stack_size);

    int chk = 1;
    do{
        int element;
        printf("Enter element: ");
        scanf("%d", &element);
        if (push(element) == -1)
        {
            printf("STACK FULL\n");
            break;
        }
        printf("Element? (1:Yes, 0:NO) ");
        scanf("%d", &chk);
    }while(chk == 1);

    printf("\nAfter reversing: \n");
    while(isEmpty() != 1)
    {   
        int x = pop();
        printf("%d ", x);
    }
}
