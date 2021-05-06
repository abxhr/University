/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication4;
import java.sql.*;
/**
 *
 * @author abxhr
 */
public class JavaApplication4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        try{
            // Loading Driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Obtain a connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/20190233db", "root", "a");
            
            // Create object
            Statement stmt = con.createStatement();
            
            stmt.executeUpdate("insert into salesman values(5008, 'Khader', 'Antartica', 0.15)");
            stmt.executeUpdate("insert into salesman values(5009, 'Superman', 'Kerala', 0.12)");
            stmt.executeUpdate("insert into salesman values(5002, 'Kim Jong Un', 'Mars', 0.20)");
            
            ResultSet rs = stmt.executeQuery("select * from salesman");
            
            
            while (rs.next()){
                System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + "\n");
            }
            
            rs.close();
            
            ResultSet rs1 = stmt.executeQuery("select salesman_name from salesman where salesman_id=5002");
            
            while (rs1.next()){
                System.out.println(rs1.getString(1) + "\n");
            }
            
            rs1.close();
            stmt.close();
            con.close();
        }
        
        catch(Exception e){
            System.out.println("Ünable to connect with Database");
        }
    }
    
}
