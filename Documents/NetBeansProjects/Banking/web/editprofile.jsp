<%-- 
    Document   : editprofile
    Created on : Aug 24, 2022, 4:19:25 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <h2>change</h2>
        <form action="editprofileDBMS.jsp">
        <select name="choice">
            <option>name</option>
            <option>address</option>
            <option>mobile</option>
            <option>password</option>
            <option>securityQuestion</option>
            <option>securityAnswer</option>
        </select>
        
        <input type="text" name="text1">
        
        <input type="submit" > 
    </form>
    </body>
</html>
