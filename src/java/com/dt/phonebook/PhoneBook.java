package com.dt.phonebook;
import java.sql.*;
import java.util.ArrayList;
public class PhoneBook {
    public void addContact(Contact c){
        try{ 
        DatabaseManager baglan=new DatabaseManager();
        Connection con=baglan.getConnection();
        String sql="insert rehber(isim,telefon) values(?,?)";
        PreparedStatement ekle=con.prepareStatement(sql);
        ekle.setString(1,c.getAdSoyad());
        ekle.setString(2,c.getTel());
        int sonuc=ekle.executeUpdate();
        }
       catch(Exception e){
       e.printStackTrace();
   }         
    }
    public void deleteContact(Contact c){
        try{ 
        DatabaseManager baglan=new DatabaseManager();
        Connection con=baglan.getConnection();
        
        String sql="delete from rehber where isim=? and telefon=?";
        PreparedStatement sil=con.prepareStatement(sql);
        sil.setString(1,c.getAdSoyad());
        sil.setString(2,c.getTel());   
        int sonuc=sil.executeUpdate();
        }
       catch(Exception e){
       e.printStackTrace();
   }
   }
    public ArrayList getList()throws Exception {
        DatabaseManager baglan=new DatabaseManager();
        Connection con=baglan.getConnection();
        Statement durum=con.createStatement();
        ResultSet sonuc=durum.executeQuery("select * from rehber");
        ArrayList liste=new ArrayList();
         while(sonuc.next()){
            String adsoyad=sonuc.getString("isim");
            String tel=sonuc.getString("telefon");            
            Contact c=new Contact(adsoyad,tel);                     
            liste.add(c);
         }
        return liste;
        }
    public void updateContact(Contact c){
        try{ 
        DatabaseManager baglan=new DatabaseManager();
        Connection con=baglan.getConnection();
        String sql="update rehber set telefon=? where isim=?";
        PreparedStatement update=con.prepareStatement(sql);        
        update.setString(1,c.getTel());
        update.setString(2,c.getAdSoyad());
        int sonuc=update.executeUpdate();
        }
       catch(Exception e){
       e.printStackTrace();
   }  }}
        /*public static void main(String[]args){
        PhoneBook dene=new PhoneBook();
        dene.addContact(c);
        Contact d=new Contact("ahmet","45345345");
        dene.deleteContact(d);
        Contact f=new Contact("mehmet","00000");
        dene.updateContact(f);
        
         }*/
      
    
 
