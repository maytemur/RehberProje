<html>
<body>
<form action="giris.jsp">
<table>
<% 
        if(request.getParameter("message")!=null){ 
        out.println(request.getParameter("message"));
            }
            %>
<tr><td>Kullanici Adi:</td><td>
    <input type="text" name="kullanici"><br></td></tr>
    <tr><td>Sifre:</td><td>
    <input type="text" name="pass"><br></td></tr>
    <tr><td align="center">
    <input type="submit" value="OK"</td></tr>
</table>
</form>
</body>
</html>