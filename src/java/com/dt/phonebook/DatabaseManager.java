package com.dt.phonebook;
import java.sql.*;
import java.sql.Driver;

public class DatabaseManager {
       public  Connection getConnection() throws Exception {           
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        String url="jdbc:mysql://localhost:1500/rehber";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, "root", "root");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return conn;
         }/** Creates a new instance of database_connect */        
}