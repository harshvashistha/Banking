<%-- 
    Document   : ViewCustomer
    Created on : Aug 22, 2022, 3:21:15 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        
        <form action="ViewCustomerDBMS.jsp" method="post">
            <select name="choice">
                <option>all</option>
                <option>ACCOUNTNO</option>
            </select>
            <input type="text" name="txt1">
            <input type="submit" value="view"">
            
            
        </form>
    </body>
</html>
