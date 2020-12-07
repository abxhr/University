import java.util.*;
import java.time.*;
import java.text.*;
import java.text.SimpleDateFormat;

abstract class Insurance{
    String name;
    String id;
    String client_pass;
    double premium;
    String start_d;
    String expiry_d;
    String type;
    Scanner input = new Scanner(System.in);
    
    Insurance(String name, String id, String client_pass){
        this.name = name;
        this.id = id;
        this.client_pass = client_pass;
        Calendar cal = Calendar.getInstance();
        Date s = cal.getTime();
        cal.add(Calendar.YEAR, 1); 
        Date e = cal.getTime();
        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        start_d = DateFor.format(s);
        expiry_d = DateFor.format(e);
    }

    void display(){
        System.out.printf("\n\n\t\tName: %s\n\t\tID: %s\n\t\tType: %s\n\t\tPremium: %lf\n\t\tStart: %s\n\t\tExpiry: %s\n\t\tTotal Coverage: %lf\n", name, id, type, premium, start_d, expiry_d, total_cov_amount);
    }

    abstract void modify();
    abstract void printDetails();
    abstract void planChooser(int op);
}

class Health extends Insurance{
    double total_cov_amount;
    private String [] hospitals = {"NMC Hospitals", "Aster Hospitals/Clinics", "Al Noor Clinic", "Zulekha Hospital", "Thumbay Hospital", "Iranian Hospital", "International Modern Hospital", "Belhoul Speciality Hospital", "Prime Hospitals/Clinics"};
    private boolean dental = false;
    private boolean optical = false;
    private boolean maternity = false;
    private double consultation;
    private double medicine;
    private double diagnostics;

    // Functions: 
    Health(String name, String id, String client_pass){
        super(name, id, client_pass);
        System.out.println("\n\tWhich type of Health Insurance do you want?\n\n");
        this.printDetails();
        int op = input.nextInt();
        this.planChooser(op);
    }

    void getHospitals(){
        System.out.println("\n\t\tList of Hospitals:\n");
        for(int i=0;i<(this.hospitals).length;i++){
            System.out.println("\n\t");
            System.out.println(hospitals[i]);
        }
    }

    boolean getDental(){
        return dental;
    }

    boolean getOptical(){
        return dental;
    }

    boolean getMaternity(){
        return maternity;
    }

    void printDetails(){
        System.out.println("[1] Gold \t\t\t [2] Silver \t\t\t [3] Bronze");
        System.out.println("    Coverage : AED 200,000 \t     Coverage : AED 100,000 \t     Coverage : AED 50,000");
        System.out.println("    Premium : AED 10,000 \t     Premium : AED 5,000 \t     Premium : AED 2,500");
        System.out.println("    5% Consultation \t\t     10% Consultation \t\t     20% Consultation");
        System.out.println("    7% Medicine \t\t     15% Medicine \t\t     25% Medicine");
        System.out.println("    10% Diagnostics \t\t     20% Diagnostics \t\t     30% Diagnostics");
        System.out.println("    Dental Covered : YES \t     Dental Covered : NO \t     Dental Covered : NO");
        System.out.println("    Optical Covered : YES \t     Optical Covered : YES \t     Optical Covered : NO");
		System.out.println("    Maternity Covered : YES \t     Maternity Covered : YES \t     Maternity Covered : NO");
    }

    void planChooser(int op){
        switch(op){
            case 1:
                this.type = "Gold"; 
                this.premium = 10000;
                this.total_cov_amount = 200000;
                this.consultation = 0.05;
                this.medicine = 0.07;
                this.diagnostics = 0.10;
                this.dental = true;
                this.optical = true;
                this.maternity = true;
            break;
            case 2:
                this.type = "Silver"; 
                this.premium = 5000;
                this.total_cov_amount = 100000;
                this.consultation = 0.10;
                this.medicine = 0.15;
                this.diagnostics = 0.20;
                this.dental = false;
                this.optical = true;
                this.maternity = true;
            break;
            case 3:
                this.type = "Bronze";
                this.premium = 2500; 
                this.total_cov_amount = 50000;
                this.consultation = 0.20;
                this.medicine = 0.25;
                this.diagnostics = 0.30;
                this.dental = false;
                this.optical = false;
                this.maternity = false;
            break;
            default:
                System.out.println("NOT VALID INPUT!\n");
        }
    }

    void modify(){
        System.out.println("\n\tEnter from the plans below:\n");
        printDetails();
        System.out.println("Enter: ");
        int op = input.nextInt();
        switch(op){
            case 1:
                if((this.type).equals("Gold")){
                    System.out.println("\n\tThis Insurance is already having the Gold Plan\n");
                }
                else{
                    this.planChooser(op);
                }
            break;
            case 2:
                if((this.type).equals("Silver")){
                    System.out.println("\n\tThis Insurance is already having the Silver Plan\n");
                }
                else{
                    this.planChooser(op);
                }
            break;
            case 3:
                if((this.type).equals("Bronze")){
                    System.out.println("\n\tThis Insurance is already having the Bronze Plan\n");
                }
                else{
                    this.planChooser(op);
                }
            break;
            default:
                System.out.println("\n\tINVALID OPTION\n");
        }
    }

    void display(){
        super.display();
        System.out.printf("\t\tDental: %B\n\t\tOptical: %B\n\t\tMaternity: %B\n\t\tConsultation Coverage: %lf\n\t\tMedicine Coverage: %lf\n\t\tDiagnostics Coverage: %lf\n", dental, optical, maternity, consultation, medicine, diagnostics);
    }
}

class Vehicle extends Insurance{
    int car_type;                   // [1]: Sedan, [2]: SUV, [3]: Sports, [4]: Others
    double car_value;
    String car_name;
    double car_kms;
    double car_mileage;
    int man_year;
    double insured_amount;
    boolean rent_car = false;
    float collision;                // [1]: Full insurance = 1.0, [2]: Third-party = 0.5


    // Functions:
    Vehicle(String name, String id, String client_pass){
        super(name, id, client_pass);
        System.out.println("\n\tWhich type of Health Insurance do you want?\n\n");
        this.printDetails();
        int op = input.nextInt();
        this.planChooser(op);
    }

    void printDetails(){
        System.out.println("\t\t[1] Full Insurance \t\t\t  [2] Third - Party Insurance");
        System.out.println("------------------------------------------------------------------------------------------");
        System.out.println("      Insured Amount :  AED 50,000 for Sedan \t\tInsured Amount :  AED 25,000 for Sedan");
        System.out.println("\t\t\tAED 100,000 for SUV \t\t\t\t  AED 50,000 for SUV");
        System.out.println("\t\t\tAED 300,000 for Sports \t\t\t\t  AED 100,000 for Sports");
        System.out.println("   Collision Coverage:     Fully Covered \t     Collision Coverage:  50% of Expenses Covered");
        System.out.println("Medical Deductibility:     AED 10,000 \t\t  Medical Deductibility:      AED 50,000");
        System.out.println("   Emergency Roadside \t\t\t\t     Emergency Roadside");
        System.out.println("\t   Assistance:      Yes\t\t\t\t     Assistance:      Yes");
        System.out.println(" Safe Driver Discount:      Yes\t\t\t   Safe Driver Discount:      Yes");
        System.out.println("\t  Total Cost :   AED 750 for Sedan \t\t    Total Cost :    AED 500 for Sedan");
        System.out.println("\t                 AED 1,500 for SUV \t\t                    AED 1,000 for SUV");
        System.out.println("\t                 AED 6,000 for Sports \t\t                    AED 4,000 for Sports");
        System.out.println("\t                 AED 1,000 for Others \t\t                    AED 800 for Others");
    }

    void calculateInsuredAmount(){
        switch(type){
            case "Full Insurance":                                             // Full insurance
                switch(car_type){
                    case 1:                                     // Sedan
                        this.insured_amount = 50000;
                    break;
                    case 2:             
                        this.insured_amount = 100000;
                    break;
                    case 3:
                        this.insured_amount = 300000;
                    break;
                    case 4:
                        this.insured_amount = 75000;
                    break;
                }
                if(car_kms > 200000){
                    this.insured_amount *= 0.1;
                }
                else if(car_kms > 100000){
                    this.insured_amount *= 0.3;
                }
                else{
                    this.insured_amount *= 0.8;
                }
            break;
            
            case "Third-Party Insurance":                                              // Third-party
                switch(car_type){
                    case 1:                                     // Sedan
                        this.insured_amount = 25000;
                    break;
                    case 2:             
                        this.insured_amount = 50000;
                    break;
                    case 3:
                        this.insured_amount = 100000;
                    break;
                    case 4:
                        this.insured_amount = 35000;
                    break;
                }
                if(car_kms > 200000){
                    this.insured_amount *= 0.1;
                }
                else if(car_kms > 100000){
                    this.insured_amount *= 0.3;
                }
                else{
                    this.insured_amount *= 0.8;
                }            
            break;
        }
    }

    void modify(){
        System.out.println("\n\tEnter from the plans below:\n");
        this.printDetails();
        System.out.println("Enter: ");
        int op = input.nextInt();
        switch(op){
            case 1:
                if((this.type).equals("Full Insurance")){
                    System.out.println("\n\tThis Insurance is already having the Full Insurance Plan\n");
                }
                else{
                    this.planChooser(op);
                }
            break;
            case 2:
                if((this.type).equals("Third-Party Insurance")){
                    System.out.println("\n\tThis Insurance is already having the Third-Party Insurance Plan\n");
                }
                else{
                    this.planChooser(op);
                }
            break;
            default:
                System.out.println("\n\tINVALID OPTION\n");
        }
    }

    void planChooser(int op){
        switch(op){
            case 1:

            break;
            case 2:

            break;
            default:
                System.out.println("\n\tINVALID OPTION");
        }
    }

    void display(){
        super.display();

    }
}

/************************************************************

                        START HERE                                                   // IF it is empty, show THAT IT IS EMPTY

************************************************************/

class Program{
    private static String USERNAME = "Admin";
    private static String PASSWORD = "you123";
    private static Scanner input = new Scanner(System.in);
    private static String ID_h = "ThkH02020/";                               // Write function to format the IDs properly
    private static String ID_v = "ThkV02020/";

    // ID for health : ThkH02020/1/1

    private static int ID_t_count = 0;
    private static int ID_H_count = 0;
    private static int ID_V_count = 0;

    private static ArrayList <Health> all_health  = new ArrayList <Health>();
    private static ArrayList <Vehicle> all_vehicle = new ArrayList <Vehicle>();

    public static void main(String [] args) {
        login();

    }

    public static void clearScreen() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }

    public static void refreshScreen() {
        clearScreen();
        System.out.println("\n\t\t\tThekumootil Insurance\n");
    }

    public static void transitionBuffer() {
        System.out.println("Press any key to continue!");
        input.nextLine();
    }

    public static void login() {                            //PLEASE CHANGE
        refreshScreen();
        System.out.println("\n\t[1]: Admin Login\n\t[2]: Client Login\n\t[3]: Exit\n\t[4]: Help\n");
        System.out.print("\n\tOption : ");

        try{
            int option = input.nextInt();
            input.nextLine();

            switch (option) {
                case 1:
                    adminLogin();
                break;
                case 2:
                    clientLogin();     //Make this please
                break;
                case 3:
                    leave();
                break;
                case 4:
                    termsAndConditions();
                    login();
                break;
                default:
                    System.out.println("\n\t\tPlease enter a valid option... you idiot\n");
                    login();
            }
        }
        catch (InputMismatchException E) {
            System.out.println("Please enter a valid option!");
            transitionBuffer();
            login();
        }
    }

    public static void adminLogin() {
        refreshScreen();
        System.out.print("Username : ");
        String username = input.nextLine();

        System.out.print("PASSWORD : ");
        String password = input.nextLine();

        if (username.equals(USERNAME) && password.equals(PASSWORD)) {
            System.out.println("Logged in succesfully!");
            transitionBuffer();
            adminMenu();
        } 
        else {
            System.out.println("Username or Password is incorrect!");
            transitionBuffer();
            login();
        }
    }

    public static void clientLogin(){

    }

    public static void leave() {
        refreshScreen();
        System.out.println("\n\t\tThank you for using our portal!\nWe hope to see you again!\n");
        transitionBuffer();
        System.exit(0);
    }
 
    public static void adminMenu(){
        refreshScreen();
        System.out.println("\n\n\t\t\tAdmin Menu\n\n");
        System.out.println("\t[1]: Make New Client\n\t[2]: Modify Client\n\t[3]: Delete Client\n\t[4]: Logout from Admin\n\n");
        int option = input.nextInt();
        switch(option){
            case 1:
                makeClient();
            break;
            case 2:
                modifyClient();
            break;
            case 3:
                deleteClient();
            break;
            case 4:
                login();
            break;
            default:
                System.out.println("\t\t\tPlease enter a valid option!");
                transitionBuffer();
                adminMenu();
        }
    }

    public static void makeClient(){
        refreshScreen();
        System.out.println("\n\tNEW CLIENT:\n\t");
        System.out.println("\tEnter Client Details: ");
        System.out.println("\n\n\tName: ");
        String name = input.nextLine();
        System.out.println("\n\tPassword: ");
        String pass = input.nextLine();
        System.out.println("\n\t[1]Health \t[2]Vehicle: ");
        int option = input.nextInt();
        String temp_ID;
        switch (option){
            case 1:
                ID_H_count++;                                                // Increase the count of Health Insurance
                ID_t_count++;
                temp_ID = ID_h + ID_t_count + "/" + ID_H_count;
                all_health.add(new Health(name, temp_ID, pass));
                transitionBuffer();
            break;
            case 2:
                ID_V_count++;
                ID_t_count++;
                temp_ID = ID_v + ID_t_count + "/" + ID_V_count;
                all_vehicle.add(new Vehicle(name,temp_ID,pass));
                transitionBuffer();
            break;
            default:
                System.out.println("\n\t\tINVALID OPTION!");
                transitionBuffer();
                makeClient();
        }
    }

    public static void modifyClient(){
        refreshScreen();
        System.out.println("\n\t\t\tMODIFY INSURANCE\n\n");
        System.out.println("\n\tEnter the Insurance ID: ");
        String temp_id = input.nextLine();
        int op = input.nextInt();
        switch(op){
            case 1:
                int i = finder(temp_id);
                if(i>0){
                    all_health[i-1].modify();
                }
                else{
                    System.out.println("\n\tINVALID ID\n\t");
                    transitionBuffer();
                }
            break;
            case 2:
                int i = finder(temp_id);
                if(i>0){
                    all_vehicle[i-1].modify();
                }
                else{
                    System.out.println("\n\tINVALID ID\n\t");
                    transitionBuffer();
                }
            break;
            default:
                System.out.println("\n\tINVALID OPTION\n");
                transitionBuffer();
        }
    }

    public static void deleteClient(){
        refreshScreen();
        System.out.println("\n\t\t\tDELETE INSURANCE\n\n");
        System.out.println("\n\tEnter the Insurance ID: ");
        String temp_id = input.nextLine();
        int op = input.nextInt();
        int i;
        switch(op){
            case 1:
                i = finder(temp_id);
                if(i>0){
                    all_health.remove(i-1);
                }
                else{
                    System.out.println("\n\tINVALID ID\n\t");
                    transitionBuffer();
                }
            break;
            case 2:
                i = finder(temp_id);
                if(i>0){
                    all_vehicle.remove(i-1);
                }
                else{
                    System.out.println("\n\tINVALID ID\n\t");
                    transitionBuffer();
                }
            break;
            default:
                System.out.println("\n\tINVALID OPTION\n");
                transitionBuffer();
        }
    }

    static int finder(String temp_id){
        if(temp_id.charAt(3) == 'H'){
            for(int i = 0; i < all_health.size(); i++){
                if((all_health[i].id).equals(temp_id)){
                    return i+1;
                }
            }
            return 0;
        }

        else if(temp_id.charAt(3) == 'V'){
            for(int i = 0; i < all_vehicle.size(); i++){
                if((all_vehicle[i].id).equals(temp_id)){
                    return i+1;
                }
            }
            return 0;
        }
    
        else{
            return 0;
        }
    }

    /// At the end
    public static void termsAndConditions() {
        refreshScreen();
        System.out.println("\n\n\t\t\tTERMS AND CONDITIONS:\n\n");
        
        transitionBuffer();
    }
}