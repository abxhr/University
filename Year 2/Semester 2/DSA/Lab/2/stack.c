#define _POSIX_C_SOURCE 199309L
#include<stdio.h>
#include<stdlib.h>
#include<stdint.h> /* for uint64 definition */ 
#include<time.h> /* for clock_gettime */ 

#define BILLION 1000000000L


int*stack;
int stack_size;
int opCode;
int top=-1;

int stackSize()
{
	return top+1;
}

int stackTop()
{
	if (isEmpty())
	{
		return -1;
	}
	return stack[top];
}

int isEmpty()
{
	if (top == -1)
	{
		return 1;
	}
	return -1;
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
	FILE*fp1;
	FILE*fp2;
	int i,j;
	int x,val;
	fp1=fopen("testCaseSize.txt","w");//lists the sizes of 10 different test cases
	fp2=fopen("SearchTestcase.txt","w");//lists all those test case where each entry (other than size) is either 0 (pop) or 1(push)
	int size=30;
	for(i=0;i<10;i++)
	{
		fprintf(fp1,"%d\n",size);
		size=size*2;
	}
	fclose(fp1);	
	fp1=fopen("testCaseSize.txt","r");
	for(i=0;i<10;i++)
	{	
		fscanf(fp1,"%d",&size);
		fprintf(fp2,"%d ",size);

		for(j=0;j<size-1;j++)
		{
			fprintf(fp2,"%d ",((rand()%10000)>=6000)?0:1);
		}
		fprintf(fp2,"%d\n",((rand()%10000)>=6000)?0:1);
	}
	fclose(fp1);
 	fclose(fp2);

	int status;

	fp1=fopen("SearchTestcase.txt","r");	
	fp2=fopen("stackTime.txt","w");

	uint64_t diff=0;
	struct timespec start, end;

	for(i=0;i<10;i++)
	{	fscanf(fp1,"%d",&size);
		stack_size=(int)(0.7*size);
		stack=(int*)calloc(sizeof(int), stack_size); //have a stack of reasonable size for each test case

		for(j=0;j<size;j++)
		{
			fscanf(fp1,"%d",&opCode);
			if (opCode==1)//wants to push
			{	x=rand()%10000;	//generate the random value to be pushed		
				clock_gettime(CLOCK_MONOTONIC, &start); /* mark start time */ 
				status=push(x);			
				clock_gettime(CLOCK_MONOTONIC, &end); /* mark the end time */ 
			
				diff += BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec; 

				if(status==-1)//stack full
				{
					printf("\n Pushing %d failed, stack full",x);
				}
				else 
				{
					printf("\n %d Successfully pushed", x);
				}
			}
			else
			{				
				clock_gettime(CLOCK_MONOTONIC, &start); /* mark start time */ 
				status=pop(x);			
				clock_gettime(CLOCK_MONOTONIC, &end); /* mark the end time */ 
			
				diff += BILLION * (end.tv_sec - start.tv_sec) + end.tv_nsec - start.tv_nsec; 

				if(status==-1)//stack empty
				{
					printf("\n popping failed, stack empty");
				}
				else
				{
					printf("\n successfully popped %d",status);
				}
			}
		}
		fprintf(fp2,"%.3f\n", ((long long unsigned int) diff/(float)size)); //write average computation time for a test case
	}
	fclose(fp1);
	fclose(fp2); 
}