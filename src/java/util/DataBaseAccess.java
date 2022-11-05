/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author iserg
 */
public class DataBaseAccess {
    public static Connection conn;

    static{
        try{
            if(conn == null){
                Class.forName("org.postgresql.Driver");
                conn = DriverManager.getConnection("jdbc:postgresql://ec2-3-213-228-206.compute-1.amazonaws.com:5432/dc0955np1d7l60","woeibqhgfadvps","5cb0416be5b07a0d3928cdb877b68540915e0ff47c6ff29d6d6d711e13bd1478");
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
    } 
}
