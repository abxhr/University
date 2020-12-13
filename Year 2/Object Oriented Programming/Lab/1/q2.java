import java.util.Scanner;

class q2 {
    public static void main(String [] args){
        int divisor,dividend;
        Scanner in = new Scanner(System.in);
        System.out.print("\nDividend: ");
        dividend = in.nextInt();
        System.out.print("Divisor: ");
        divisor = in.nextInt();
        System.out.println("Quotient: " + dividend/divisor);
        System.out.println("Remainder: " + dividend%divisor);
    }
}
