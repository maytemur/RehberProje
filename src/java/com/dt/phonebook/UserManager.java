package com.dt.phonebook;
import java.sql.*;
public class UserManager {
    public boolean KullaniciVarmi(String kullanici,String pass) throws Exception{
        DatabaseManager kontrol=new DatabaseManager();
        Connection con=kontrol.getConnection();
        String sql="select * from kullanici where kullanici=? and sifre=?";
        PreparedStatement sel=con.prepareStatement(sql);
        sel.setString(1,kullanici);
        sel.setString(2,pass);
        ResultSet rs=sel.executeQuery();
        return rs.next();
        }
}