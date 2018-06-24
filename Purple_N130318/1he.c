#include<stdio.h>
int main()
{
	int test_case,i,j,temp,k;
	scanf("%d",&test_case);
	int arr[test_case][20];
	int count[test_case],del[test_case];
	for(i=0;i<test_case;i++)
	{
		scanf("%d",count+i);
		for(j=0;j<count[i];j++)
		{
			scanf("%d",&arr[i][j]);
		}
		scanf("%d",del+i);
	}
	for(i=0;i<test_case;i++)
	{
		for(j=0;j<count[i];j++)
		{
			if(del[i]==arr[i][j])
			{
				arr[i][j]=1;
			}
		}
	}
		for(i=0;i<test_case;i++)
		{
			for(k=0;k<count[i];k++)
			{
				for(j=count[i]-1;j>0;j--)
				{
					if(arr[i][j]==1)
					{
						temp=arr[i][j];
						arr[i][j]=arr[i][j-1];
						arr[i][j-1]=temp;
					}
				}
			}
		}
		for(i=0;i<test_case;i++)
		{
			printf("\n");
			for(j=0;j<count[i];j++)
			{
				printf("%d ",arr[i][j]);
		}
	}
	return 0;
}
