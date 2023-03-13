<%@page import="com.dt.phonebook.*"%>
<html>
<head><title>GIRIS</title></head>
<body>
<%
String isim=request.getParameter("isim");
String telefon=request.getParameter("telefon");
  PhoneBook bu=new PhoneBook();
        Contact yeni=new Contact(isim,telefon);
        bu.addContact(yeni);
        response.sendRedirect("ContactForm.jsp");
  %>
<table><tr><td>
    <h2>Hosgeldiniz</h2></td></tr>
    <tr><td align="center">
    <h2><%=isim%></h2></td></tr>
    <tr><td align="center">
    <h2><%=telefon%></h2></td></tr>
    </body>
</html>
