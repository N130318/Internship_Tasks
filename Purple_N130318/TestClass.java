import java.lang.*;
import java.util.*;
class TestClass {
    public static void main(String args[]) {

        Scanner s = new Scanner(System.in);
        int T =s.nextInt();
        int c;
        for(int j=0;j<=T;j++)
        {
			c=0;
            int N =s.nextInt();
            int L=s.nextInt();
            int R=s.nextInt();
            for (int i = 1; i < N; i++) {
                if(N%i==0)
                {
					System.out.println(N);
                    for(int k=L;k<=R;k++)
                    {
                        if(k%i==0)
                        {
                           System.out.println(k);
                           c++;
                        }
                        
                    }
                }
            }
            System.out.print(c);
        }
    }
}
