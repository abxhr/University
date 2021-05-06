/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectingmysqlwithjava;
import java.sql.*;
/**
 *
 * @author CSLAB50
 */
public class ConnectingMySQLWithJava {

    
    public static void main(String[] args) {
        
        try{
            // Loading Driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Obtain a connection or creating a new connection
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/20190233db", "root", "#");
            
            // Create and execute statement (SQL Query)
            Statement stmt = con.createStatement();
            
            // int rows = stmt.executeUpdate("update salesman set name='babu' where salesman_id=5001");
            // stmt.executeUpdate("ïnsert into salesman values(5008, 'Khader', 'Antartica', 0.15)");
            
            ResultSet rs = stmt.executeQuery("select * from salesman");
            
            //System.out.println(rows);
            
            // Printing Values
            
            while (rs.next()){
                System.out.println(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4));
            }

            
            rs.close();
            stmt.close();
            con.close();
        }
        catch(Exception e){
            System.out.println("Ünable to connect with Database");
        }
    }
    
}
