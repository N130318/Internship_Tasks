#include<stdio.h>
int prime(int x)
{
	int i,count=0,j=0;
	for(i=2;i<=(x/2);i++)
	{
		if(x%i==0)
			count++;
	}
	if(x==1)
		return 0;
	if(count==0)
		return 1;
	else
		return 0;
}
int main()
{
	int t,i,num1,num2,num3,k,j=0,temp1=0,arr=0,final_count=0,final;
	//1.t=No.of.Testcases,2.i=Iterative variable 3.num1,num2,num3=inputs 4.k=Iterative variable to check prime numbers 5.j=size of the prime number array
	//6.temp1=Iterative variable for L to R range 7.arr=Iterative variable 8.final_count=count of numbers
	scanf("%d",&t);
	int result[t];
	for(i=1;i<=t;i++)
	{
		scanf("%d",&num1);
		scanf("%d",&num2);
		scanf("%d",&num3);
		int prime_arr[num1];
		for(k=1;k<=num1;k++) //Loop to check prime numbers between 1 to N(num1) range
		{
			if(prime(k)==1)
			{
				prime_arr[j]=k;
				j++;
			}
		}
		for(temp1=num2;temp1<=num3;temp1++)// Loop to count the numbers between L(num2) and R(num3) which are divisible by above numbers in prime_arr
		{
			for(arr=0;arr<j;arr++)
			{
				if(temp1%prime_arr[arr]==0)
				{
					final_count++;
					break;
				}
			}
		}
		j=0;
		result[final]=final_count;
		final_count=0;
		final++;
	}
	for(i=0;i<t;i++)
		printf("%d\n",result[i]);
	return 0;
}
