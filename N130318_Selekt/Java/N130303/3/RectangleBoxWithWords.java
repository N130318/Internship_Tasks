public class RectangleBoxWithWords {

    public static void main(String[] args) {
        String words[] = {"Hello", "World", "in", "a", "frame"};
        displayRectangleBox(words);
    }

    private static void displayRectangleBox(String[] words) {
        int rectangleLength = maxLengthOfWords(words) + 2;
        displayRowWithStars(rectangleLength);
        for (String word: words) {
            displayARow(word, rectangleLength);
        }
        displayRowWithStars(rectangleLength);
    }

    private static void displayRowWithStars(int rectangleLength) {
        for (int col=0 ; col<= rectangleLength;col++) {
            System.out.printf("*");
        }
        System.out.println();
    }

    private static void displayARow(String word, int maxLength) {
        System.out.printf("*%s", word);
        int spaces = maxLength - (word.length() + 1);
        for (int space = 0; space < spaces; space++) {
            System.out.printf(" ");
        }
        System.out.println("*");
    }

    private static int maxLengthOfWords(String[] words) {
        int max = 0;
        for (String word : words) {
            if (word.length() >= max) {
                max = word.length();
            }
        }
        return max;
    }

}
