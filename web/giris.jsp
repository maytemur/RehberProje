<%@page import="com.dt.phonebook.*"%>
<html>
<head><title>GIRIS</title></head>
<body>
<%   
    try{
    String kullanici=request.getParameter("kullanici");
    String sifre=request.getParameter("pass");
     UserManager um=new UserManager();   
    if (um.KullaniciVarmi(kullanici,sifre)){
        session.setAttribute("kullanici",kullanici);    
        response.sendRedirect("ContactForm.jsp");
    }
    else {
        response.sendRedirect("Girisform.jsp?message=Hatali giris yaptiniz");
    }
    }catch(Exception e){
     e.printStackTrace();
     }
     %>
   </body>
</html>