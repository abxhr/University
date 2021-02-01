import java.util.Scanner;

class q3 {
    public static void main(String args[]){
        double i,p,r,t;
        System.out.print("Principal: ");
        Scanner in = new Scanner(System.in);
        p = in.nextDouble();
        System.out.print("Interest rate: ");
        r = in.nextDouble();
        System.out.print("Years: ");
        t = in.nextDouble();
        System.out.println("Interest: " + (p*r*t));
    }
}
