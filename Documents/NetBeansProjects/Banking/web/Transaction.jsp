<%-- 
    Document   : Transaction
    Created on : Aug 22, 2022, 3:22:21 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <form action="TransactionDBMS.jsp">
            <select name="choice">
                <option>all</option>
                <option>accountno</option>
                <option>dateofTransaction</option>
                <option>transactionID</option>
            </select>
            <input type="text" name="text1">
            <input type="submit">
        </form>
    </body>
</html>
