#include<stdio.h>
#include<string.h>
int main()
{
	int s1,s2,s;
	do 
	{
		printf("Choose:\n1.Rocks\n2.Scissors\n3.Paper\n");
		printf("First Player:");
		scanf("%d",&s1);
		printf("Second Player:");
		scanf("%d",&s2);
		if(s1==1&&s2==2)
		{
			printf("Congratulations,Player1\n");
		}
		else if(s1==2&&s2==3)
		{
			printf("Congratualtions,Player1\n");
		}
		else if(s1==3&&s2==1)
		{
			printf("Congratulations,Player1\n");
		}
		else if(s1==2&&s2==1)
		{
			printf("Congratulations,Player1\n");
		}
		else if(s1==3&&s2==2)
		{
			printf("Congratulations,Player1\n");
		}
		else
		{
			printf("Draw Match\n");
		}
		printf("Want to Play Again (1/0):");
		scanf("%d",&s);
	}while(s==1);
	printf("Good Bye !");
	return 0;
}
