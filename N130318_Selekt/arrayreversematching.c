#include<stdio.h>
int main()
{
int i,j=1,n;
scanf("%d",&n);
int arr[n],arr2[n];
for(i=0;i<n;i++)
	scanf("%d",&arr[i]);
for(i=0;i<n;i++)
	scanf("%d",&arr2[i]);
for(i=0;i<n;i++)
{
	if(arr[i]==arr2[n-1-i])
	{
		continue; 
	}
	else 
	{
		j=0;
	}
}
if(j==1)
printf("Yes,they are opposites");
else printf("Fail");
return 0;
}
