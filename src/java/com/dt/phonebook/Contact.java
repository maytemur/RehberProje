package com.dt.phonebook;

public class Contact {
    String AdSoyad,Tel;
    public Contact(String AdSoyad, String Tel){        
        this.AdSoyad=AdSoyad;
        this.Tel=Tel;
    }
    public String getAdSoyad(){
        return AdSoyad;
    }
    public void setAdSoyad(String AdSoyad){
            this.AdSoyad=AdSoyad;
    }
    public String getTel(){
        return Tel;
    }
    public void setTel(String Tel){
            this.Tel=Tel;
    }
}