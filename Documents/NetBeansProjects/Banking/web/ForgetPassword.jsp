<%-- 
    Document   : forgotPassword
    Created on : Aug 22, 2022, 2:44:39 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <form action="ForgetPasswordDBMS.jsp" method="post">
            enter account no<input type="text" name="accountno">
            security question<select name="sques">
                            <option>what is pet name</option>
                            <option>nick name</option>
                        
                        </select>
            enter security answer<input type="text" name="answer">
            <input type="submit">
        </form>
    </body>
</html>
