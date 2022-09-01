<%-- 
    Document   : changePasssword
    Created on : Aug 18, 2022, 12:43:29 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        
        <h4> change password</h4>
        
        <%
            out.println(session.getAttribute("accountno"));
            out.println("       "+session.getAttribute("loginname"));
       %>
        
       <form action="changePasswordCheck.jsp" method="post">
           enter old pass <input type="text" name="oldpass"><br>
           enter new pass <input type="text" name="newpass"><br>
           enter confirm pass <input type="text" name="cnpass"><br>
           <input type="submit" value="submit">
       </form>
        
    </body>
</html>
