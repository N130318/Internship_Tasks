import java.util.Scanner;

public class RockPepperScissorsGame {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String option;
        do {
            System.out.print("Do you want to play game (y/n)::");
            option = sc.next();
            if (option.equalsIgnoreCase("Y")) {
                System.out.println("Enter name1:");
                String name1 = sc.next();
                System.out.println("Enter name2:");
                String name2 = sc.next();
                whoWin(name1, name2);
            }
            else if (option.equalsIgnoreCase("N")) {
                System.out.println("Thank you");
                break;
            }
            else {
                System.out.println("Invalid option");
            }
        }while (!option.equalsIgnoreCase("N"));
    }

    public static void whoWin(String name1, String name2) {
        if (name1.equalsIgnoreCase(name2)) {
            System.out.println("It's a tie!");
        } else if (name1.equalsIgnoreCase("rock")) {
            if (name2.equalsIgnoreCase("scissors")) {
                System.out.println("Rock wins!");
            } else {
                System.out.println("Paper wins!");
            }
        } else if (name1.equalsIgnoreCase("scissors")) {
            if (name2.equalsIgnoreCase("Paper")) {
                System.out.println("Scissors win!");
            } else {
                System.out.println("Rock wins!");
            }
        } else if (name1.equalsIgnoreCase("paper")) {
            if (name2.equalsIgnoreCase("rock")) {
                System.out.println("Paper wins!");
            } else {
                System.out.println("Scissors win!");
            }
        }
        else {
            System.out.println("Invalid Names");
        }
    }
}
