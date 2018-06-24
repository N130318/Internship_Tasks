#include<stdio.h>
int main()
{
	int tst_case,c=0,j,val=0,f=0,l,i,k;
	scanf("%d",&tst_case);
	int arr[tst_case][3];
	int pr[50];
	for(i=0;i<tst_case;i++)
	{	
			for(j=0;j<3;j++)
			{
					scanf("%d",&arr[i][j]);
			}
	}
	for(i=0;i<tst_case;i++)
	{
		c=0;val=0;
		for(j=1;j<=arr[i][0];j++)
		{	
		f=0;
			for(k=1;k<=j;k++)
			{
				if(j%k==0)
					f+=1;
			}
			if(f==2)
				{
					pr[val]=j;
					val++;
				}
		}
		for(k=arr[i][1];k<=arr[i][2];k++)
		{
			f=1;
			for(l=0;l<val;l++)
			{
				if(k%pr[l]==0)
				 f=0;
			}
			if(f==0)
				c++;
		}
		printf("%d\n",c);
	}
	return 0;
}
