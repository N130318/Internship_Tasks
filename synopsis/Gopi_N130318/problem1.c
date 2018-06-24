#include<stdio.h>
#include<stdlib.h>
#include<malloc.h>
int min_cost(int *arr,int len);
int main()
{
	int i,j,size,n;
	scanf("%d",&n);
	int *result=malloc(n*sizeof(int));
	for(i=0;i<n;i++)
	{	
		scanf("%d",&size);
		int *arr=malloc(size*sizeof(int));
		for(j=0;j<size;j++)
		{
			scanf("%d",&arr[j]);
		}
		result[i]=min_cost(arr,size);
	}
	for(i=0;i<n;i++)
	{
		printf("%d\n",result[i]);
	}
	return 0;
}
int min_cost(int *arr,int len)
{
	int i,mincst=0;
	for(i=0;i<len;i++)
	{
		if(arr[i]>arr[i+1])
		{
			mincst+=arr[i+1];}
		else
		{
			mincst+=arr[i];
		}
	len--;
	}
	arr[0]=mincst;
	return mincst;
}
	
