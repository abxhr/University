import java.util.Scanner;

class q1{
    public static void main(String [] args){
        Scanner in = new Scanner(System.in);
        double s[]=new double[5];
        double avg,per,sum=0;
        for(int i=0;i<5;i++){
            s[i] = in.nextDouble();
            sum += s[i];
        }
        avg = sum/5;
        per = (sum/500)*100;
        System.out.print("Grade = ");
        if (per > 70) System.out.print("A");
        else if(per > 60) System.out.print("B");
        else if(per > 50) System.out.print("C");
        else if(per > 40) System.out.print("D");
        else if(per > 50) System.out.print("E"); 
    }
}