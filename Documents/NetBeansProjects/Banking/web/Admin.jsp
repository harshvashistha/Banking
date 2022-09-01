<%-- 
    Document   : Admin
    Created on : Aug 22, 2022, 2:55:17 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        
        welcome ADMIN:
        <%
            
            out.println(session.getAttribute("loginname"));
            out.println("     "+session.getAttribute("accountno"));
         %>
        <h1>admin login</h1>
        
        <a href="CreateAccount.jsp">new account</a><br>
        <a href="ViewCustomer.jsp">view customer</a><br>
        <a href="ViewStatement.jsp">view statement</a><br>
        <a href="Deposite.jsp">Deposite</a><br>
        <a href="Withdraw.jsp">Withdraw</a><br>
        <a href="Transaction.jsp">Transaction</a><br>
           
    </body>
</html>
