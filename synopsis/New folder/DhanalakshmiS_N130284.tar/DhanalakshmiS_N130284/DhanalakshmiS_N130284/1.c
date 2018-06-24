#include<stdio.h>
int main(){
	int a[100],sum=0,ans[50],i,j,n,t;
	scanf("%d",&t);
	for(i=0;i<t;i++){
		scanf("%d",&n);
		scanf("%d",&a[0]);
		sum=a[0];
		for(j=1;j<n;j++){
			scanf("%d",&a[j]);
			if(sum>a[j])
				sum=a[j];
		}
		//printf("%d\n",sum);
		ans[i]=sum*(n-1);
	}
	for(i=0;i<t;i++)
		printf("%d\n",ans[i]);
	return 0;
}
