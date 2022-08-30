/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author Rajarajan
 */
;

import java.sql.*;


public class Connectionpro {
    private static Connection con;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema","root","raja123");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
    

