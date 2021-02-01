#include<stdio.h>
#include<stdlib.h>
#include<stdint.h> /* for uint64 definition */ 
#include<time.h> /* for clock_gettime */ 

#define BILLION 1000000000L


int localpid(void) {static int a[9] = { 0 }; return a[0];}


int A[5000000];
int B[5000000];


//The array A[] contains the values where 'n' is the size of the array and 'x' is the value to be searched. If the value is present, the function should return the corresponding array index, otherwise, should return -1
int linearSearch(int size,int x)
{
	for(int i=0;i<size;i++)
	{
		if (A[i] == x)
		{
			return i;
		}
	}
	return -1;
}


int binarySearch(int size,int x)
{
	int left = 0;
	int right = size-1;

	while(right>=left)
	{
		int middle = left + (right - left)/2;

		if(A[middle] == x)
		{
			return middle;
		}

		if (A[middle] < x)
		{
			left = middle + 1;
		}

		else
		{
			right = middle - 1;
		}
	}
	return -1;
}



void merging(int low, int mid, int high) {
   int l1, l2, i;

   for(l1 = low, l2 = mid + 1, i = low; l1 <= mid && l2 <= high; i++) {
      if(A[l1] <= A[l2])
         B[i] = A[l1++];
      else
         B[i] = A[l2++];
   }
   
   while(l1 <= mid)    
      B[i++] = A[l1++];

   while(l2 <= high)   
      B[i++] = A[l2++];

   for(i = low; i <= high; i++)
      A[i] = B[i];
}

void sortList(int low, int high) {
   int mid;
   
   if(low < high) {
      mid = (low + high) / 2;
      sortList(low, mid);
      sortList(mid+1, high);
      merging(low, mid, high);
   } else { 
      return;
   }   
}




int main()
{
	FILE*fp1;
	FILE*fp2;
	FILE*fp3;
	int i,j;
	int x,val;
	fp1=fopen("testCaseSize.txt","w");
	fp2=fopen("SearchTestcase.txt","w");
	int size=30;
	for(i=0;i<18;i++)
	{
		fprintf(fp1,"%d\n",size);
		size=size*2;
	}
	fclose(fp1);	
	fp1=fopen("testCaseSize.txt","r");
	for(i=0;i<18;i++)
	{	
		fscanf(fp1,"%d",&size);
		fprintf(fp2,"%d ",size);

		for(j=0;j<size;j++)
		{
			fprintf(fp2,"%d ",A[j]=rand()%100000);

		}
		if(rand()%2==0)
			fprintf(fp2,"%d\n",rand()%10000);
		else
			fprintf(fp2,"%d\n",A[rand()%size]);
	}
	fclose(fp1);
 	fclose(fp2);
	int index;
	fp2=fopen("SearchTestcase.txt","r");	
	fp1=fopen("LinearSearchTime.txt","w");
	fp3=fopen("BinarySearchTime.txt","w");

	uint64_t diff; 
	struct timespec startL, endL,startB,endB;

	for(i=0;i<18;i++)
	{	fscanf(fp2,"%d",&size);
		for(j=0;j<size;j++)
		{
			fscanf(fp2,"%d",&val);
			A[j]=val;
		}
		fscanf(fp2,"%d",&x);

		clock_gettime(CLOCK_MONOTONIC, &startL); /* mark start time */ 
		index=linearSearch(size,x);
		clock_gettime(CLOCK_MONOTONIC, &endL); /* mark the end time */ 

		diff = BILLION * (endL.tv_sec - startL.tv_sec) + endL.tv_nsec - startL.tv_nsec; 

 		fprintf(fp1,"%llu\n", (long long unsigned int) diff);

		
		printf("\n*** From Linear Search ***\n");
		if(index==-1)
			{
				printf("Value %d not present in List %d\n", x,i+1);
			}
			else
			{
				printf("Value %d present in List %d at location %d\n", x,i+1, index+1);
			}

		sortList(0,size-1);

		clock_gettime(CLOCK_MONOTONIC, &startB); /* mark start time */ 
		index=binarySearch(size,x);
		clock_gettime(CLOCK_MONOTONIC, &endB); /* mark the end time */ 
		

		printf("\n*** From Binary Search ***\n");
		if(index==-1)
			{
				printf("Value %d not present in List %d\n", x,i+1);
			}
			else
			{
				printf("Value %d present in List %d at location (after sorting) %d\n", x,i+1, index+1);
			}
		diff = BILLION * (endB.tv_sec - startB.tv_sec) + endB.tv_nsec - startB.tv_nsec; 

 		fprintf(fp3,"%llu\n", (long long unsigned int) diff);

	}
	fclose(fp3);
	fclose(fp2); 
	fclose(fp1);
}



