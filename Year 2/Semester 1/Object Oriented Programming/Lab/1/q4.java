import java.util.Scanner;

import java.util.Scanner;

class q4 {
    public static void main(String args[]){
        System.out.print("Number: ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int t,f=0;
        while(n!=0){
            t = n%10;
            f = f*10 + t;
            n /= 10; 
        }
        System.out.println("Number: " + f);
    }
}
