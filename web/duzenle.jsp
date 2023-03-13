<%@page import="com.dt.phonebook.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head><title>Duzenle Page</title></head>
<body>
<form action="duzenle2.jsp">
<%
    String ad=request.getParameter("ad");
    String tel=request.getParameter("tel");
    %>
    <table><tr><td>Ad Soyad:</td><td>
    <input type="text" value="<%=ad%>" name="ad"><br></td></tr>
    <tr><td>Telefon:</td><td>
    <input type="text" value="<%=tel%>"name="tel"><br></td></tr>
    <tr><td align="center">
    <input type="submit" value="OK"</td></tr>
    
</form>
</body>
</html>
