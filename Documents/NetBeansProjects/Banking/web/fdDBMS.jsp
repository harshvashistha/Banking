<%-- 
    Document   : fdDBMS
    Created on : Aug 29, 2022, 11:34:34 AM
    Author     : hvashistha
--%>
<%@page import="java.time.LocalDateTime" %>  

<%@page import="java.time.format.DateTimeFormatter" %>
<%@page import="java.time.LocalDateTime" %> 
<%@include file="dbcon.jsp" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
        String amount=request.getParameter("amount");
        String year=request.getParameter("year");
        
        out.println(session.getAttribute("accountno"));
        
        String account=(session.getAttribute("accountno")).toString();
        
        int inc=(Integer.parseInt(year))*8*(Integer.parseInt(amount))/100;
        
        String s="select * from "+account;
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery(s);
        int last=0;
        while(rs.next())
        {
            last = rs.getInt(7);
        }
        
                
       
        
        int z=last-Integer.parseInt(amount);
        
        String insert2="insert into "+account+" values(?,?,?,?,?,?,?);";
        
        
       
        
        java.util.Date date=new java.util.Date();
java.sql.Date sqlDate=new java.sql.Date(date.getTime());
java.sql.Timestamp sqlTime=new java.sql.Timestamp(date.getTime());
        
        PreparedStatement pst1=con.prepareStatement(insert2);
        
        pst1.setString(1,account);
        pst1.setString(2,"fd");
        pst1.setDate(3,sqlDate);
        pst1.setString(4,"fd");
        pst1.setInt(5,0);
        pst1.setInt(6,Integer.parseInt(amount));
        pst1.setInt(7,z);
        
        
        
          pst1.executeUpdate();
        
        String insert="insert into fd values(?,?,?,?,?)";
        PreparedStatement pst=con.prepareStatement(insert);
        
        pst.setString(1,account);
        pst.setInt(2,Integer.parseInt(amount));
        pst.setInt(3,Integer.parseInt(year));
        pst.setInt(4,Integer.parseInt(amount)+inc);
        pst.setDate(5,sqlDate);
        
        
        pst.executeUpdate();
        
        out.println("fd done .......done");
                
        
        
        %>
    </body>
</html>
