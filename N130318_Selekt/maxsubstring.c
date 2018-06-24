#include<stdio.h>
int main()
{
int n,max=0,i,j,count=2,x=0,y=1;
scanf("%d",&n);
char s[n],p,q;
scanf("%s",s);
for(i=0;s[i]!='\0';i++)
{
	count=2;
	p=s[i],q=s[i+1];
	for(j=i+2;s[j]!='\0';j++)
	{
		if(s[j]==p||s[j]==q)
		count++;
		else
		break;
	}
	if(max<count)
	{
		printf("%d",count);
		max=count;
		x=i,y=j-1;
		printf("%d %d\n",x,y);
		
	}
}
printf("%d\n",y-x+1);
for(i=x;i<=y;i++)
printf("%c",s[i]);

return 0;
}

