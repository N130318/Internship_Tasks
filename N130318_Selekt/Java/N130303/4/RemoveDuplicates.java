import java.util.Arrays;

public class RemoveDuplicates {

    public static void main(String[] args) {
        int arr[] = {3, 1, 2, 1, 4, 2, 42, 43};
        removeDuplicates(arr);
    }

    private static void removeDuplicates(int[] arr) {
        Arrays.sort(arr);
        int len = arr.length;
        for (int index = 0; index < len - 1; index++)
         {
            if (arr[index] != arr[index + 1])
            {
                System.out.println(arr[index]);
            }
        }
        if (arr[len - 2] != arr[len - 1]) {
            System.out.println(arr[len - 1]);
        }
    }

}
