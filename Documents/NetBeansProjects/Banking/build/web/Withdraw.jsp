<%-- 
    Document   : Withdraw
    Created on : Aug 22, 2022, 2:53:02 PM
    Author     : hvashistha
--%>

<%@page import="java.util.Random"%>
<%  Random rand=new Random();
    int dataid=rand.nextInt(1000);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <form action ="WithdrawDBMS.jsp" method="post">
            
            <table border="5" bgcolor="yellow">
                
                <tr>
                    <td>Account No</td>
                    <td><input type="text" name="accountno"></td>
                </tr>
                
                <tr>
                    <td>Transaction Id</td>
                    <td><input type="text" name="transId" value="T<%out.println(dataid);%> " readonly"></td>
                </tr>
                
                
                
                <tr>
                    <td>withdraw Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                <tr>
                <td>Date</td>
                    <td><input type="date" name="date"></td>
                </tr>
                
                <td>refernce</td>
                    <td><input type="text" name="ref"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Withdraw"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
                
            </table> 
               
        </form>      
    </body>
</html>
