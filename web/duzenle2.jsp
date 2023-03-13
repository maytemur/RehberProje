<%@page import="com.dt.phonebook.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head><title>Duzenle Page</title></head>
<body><%
    String ad=request.getParameter("ad");
    String tel=request.getParameter("tel");
    Contact degis=new Contact(ad,tel);
    PhoneBook deg=new PhoneBook();
    deg.updateContact(degis);
    response.sendRedirect("ContactForm.jsp");        
    %>      
</form></body></html>