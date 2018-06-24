//Compsare strings with k chars
public class oneb 
{
    public int lengthOfLongestSubstringKDistinct(String s, int k) {
    	int i = 0;
    	int[] charArr = new int[256];
    	int num = 0;
    	int res = 0;
    	for(int j = 0; j k){
    			while(--charArr[s.charAt(i++)] > 0);
    			num--;
    		}
    		res = Math.max(res, j-i+1)
    	}
    	return res;
    }
	public String helper(String s, int i){

		int j = i;
		
		while(s.charAt(j)==s.charAt(j+1))
			j++;
		char b = s.charAt(j+1);
		int k = j + 1;
		while(s.charAt(k)==b || s.charAt(k)==s.charAt(i))
			k++;
		return s.substring(i, k);
	}
	public static void main(String[] args)throws IOException{
		String s = "abcbbbbcccbdddadacb";
		onea obj = new onea();
		String res = obj.findLongestSubstringWith2uniqueChar(s);
		System.out.println(res);
}
