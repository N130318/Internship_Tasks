public class OppositeList {

    public static void main(String[] args) {
        int arr1[] = {1, 2, 3, 4};
        int arr2[] = {4, 3, 2, 1};
        if (isSameArrays(arr1, reverseArray(arr2))) {
            System.out.println("Yes Opposite");
        }
        else {
            System.out.println("No not opposite");
        }
    }

    public static int[] reverseArray(int arr[]) {
        int len = arr.length;
        int reverseArr[] = new int[len];
        int count = 0;
        for (int index = len - 1; index >= 0; index--) {
            reverseArr[count++] = arr[index];
        }
        return reverseArr;
    }

    public static boolean isSameArrays(int arr1[], int arr2[]) {
        if (arr1.length != arr2.length)//checking length of array are same or not
        {
            return false;
        }
        for (int index = 0; index < arr1.length; index++)//
        {
            if (arr1[index] != arr2[index]) {
                return false;
            }
        }
        return true;
    }
}
