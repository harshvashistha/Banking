<%-- 
    Document   : FundTransfer
    Created on : Aug 22, 2022, 2:50:53 PM
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
        <%
            out.println(session.getAttribute("accountno"));
            out.println("       "+session.getAttribute("loginname"));
       %>
    <form action="FundTransferDBMS.jsp" method="post">
        
        <table border='2' >
                <tr>
                    <td>
                        Transaction Id
                        
                    </td>
                    <td><input type="text" name ="transid" value="T<%out.println(dataid);%> " readonly"></td>
                </tr>
                
<!--                 <tr>
                   <td>Account from </td>
                        
                    
                    <td><input type="text" name ="accountfrom"></td>
                </tr>-->
                
                <tr>
                   <td>Account to </td>
                        
                    
                    <td><input type="text" name ="accountto"></td>
                </tr>
                
                <tr>
                   <td>Date </td>
                        
                    
                    <td><input type="date" name ="date"></td>
                </tr>
                
                <tr>
                   <td>Amount </td>
                        
                    
                    <td><input type="text" name ="amount"></td>
                
                    
                    
                    <tr>
                    <td><input type="submit" name="b1" value="TransferNow"></td>
                    <td><input type="RESET" name="b2" value="Reset"></td>
                </tr>
            </table>
        
        
        
    </form>
    </body>
</html>
