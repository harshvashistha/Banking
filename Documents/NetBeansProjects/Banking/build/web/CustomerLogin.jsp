<%-- 
    Document   : CustomerLogin
    Created on : Aug 22, 2022, 2:49:22 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        welcome :
        <%
            
            out.println(session.getAttribute("loginname"));
            out.println("     "+session.getAttribute("accountno"));
         %>
        <h1>customer login</h1><br>
        <a href="ViewProfileDBMS.jsp">view profile</a><br>
        <!--<a href="ChangePassword.jsp">change Password</a><br>-->
        <a href="ViewStatement.jsp">view statement</a><br>
        <a href="FundTransfer.jsp">fund transfer</a><br>
        <a href="changePasssword.jsp">change password</a><br>
        <a href="logout.jsp">log out</a>
        <a href="fd.jsp">FIX DEPOSIT</a>
    </body>
</html>
