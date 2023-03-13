<%@page import="com.dt.phonebook.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head><title>Sil Page</title></head>
<body>
<%  String ad=request.getParameter("ad");
    String tel=request.getParameter("tel");
    Contact gelen=new Contact(ad,tel);
    PhoneBook al=new PhoneBook();
    al.deleteContact(gelen);
    response.sendRedirect("ContactForm.jsp");
 %>

</body>
</html>
