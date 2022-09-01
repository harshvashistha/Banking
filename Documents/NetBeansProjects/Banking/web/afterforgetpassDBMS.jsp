<%-- 
    Document   : afterforgetpassDBMS
    Created on : Aug 29, 2022, 4:49:17 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
    session.getAttribute("accountno");
    %>
    <body>
        
        <form action="changeforgpass.jsp">
            new password
            <input type="text" name="pass1"><br>
            confirm new password<input type="text" name="pass2">
            
            <input type="submit" > 
        </form>
        
    </body>
</html>
