<%-- 
    Document   : Deposit
    Created on : Aug 22, 2022, 2:49:39 PM
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
        
        <form action ="DepositeDBMS.jsp" method="post">
            
            <table border="5" bgcolor="yellow">
                
                <tr>
                    <td>Account No</td>
                    <td><input type="text" name="accountno"></td>
                </tr>
                <td>refernce</td>
                    <td><input type="text" name="ref"></td>
                </tr>
                
                <tr>
                <td>Date of transaction</td>
                    <td><input type="text" name="date"></td>
                </tr>
                

                <tr>
                    <td>Transaction Id</td>
                    <td><input type="text" name="transID" value="T<%out.println(dataid);%> " readonly"></td>
                </tr>
                
                
                
                <tr>
                    <td>deposit Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                
                
                <tr>
                    <td><input type="submit" name="b1" value="Deposit"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
                
            </table> 
               
        </form>      
    </body>
</html>
