<%-- 
    Document   : changeforgpass
    Created on : Aug 29, 2022, 4:51:44 PM
    Author     : hvashistha
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
       <%
        try{
    String s11=(String)session.getAttribute("accountno");
    
    String cnpass=request.getParameter("pass1");
    
    String updatepassquery1="update account set password='"+cnpass+"'where accno='"+s11+"';";
    
    PreparedStatement pst=con.prepareStatement(updatepassquery1);
     pst.executeUpdate();
     
     out.println("succesfully password changed");

        }
        catch(Exception e)
        {
            out.println("password cannot be changed error");
        }
    
    
    
    
    
    
    
    %>
    <a href="login.jsp">move to login page</a>
    </body>
</html>
