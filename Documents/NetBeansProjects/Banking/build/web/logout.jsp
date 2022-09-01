<%-- 
    Document   : logout
    Created on : Aug 26, 2022, 9:27:40 AM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <h1>log out page</h1>
        <%
        session.invalidate();
        
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");//prevent caching at proxy server
        %>
    </body>
</html>
