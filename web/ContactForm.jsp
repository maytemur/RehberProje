<%@page import="com.dt.phonebook.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<body>
<table>
<form action="ContactList.jsp"><tr><td align="left">
    <input type="submit" value="EKLE"</td></tr>
<%
try{
    PhoneBook al=new PhoneBook();    
    ArrayList liste=al.getList();    
    for(int i = 0; i < liste.size(); i++) {
        Contact c=(Contact)liste.get(i);
        String ad=c.getAdSoyad();
        String tel=c.getTel();
        %>      <tr>
                <td><%=ad%></td>
                <td><%=tel%></td>
                <td><a href="sil.jsp?ad=<%=ad%>&tel=<%=tel%>">sil</a></td>
                <td><a href="duzenle.jsp?ad=<%=ad%>&tel=<%=tel%>">duzenle</a></td>
            </tr><%
}
}
catch(Exception e){
       e.printStackTrace();
   }
%>
</form></table>
</body>
</html>