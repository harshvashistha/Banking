<%-- 
    Document   : DepositeDBMS
    Created on : Aug 22, 2022, 2:50:05 PM
    Author     : hvashistha
--%>

<%@page import="java.util.*" %>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        
        <h1>deposit login</h1>
        <%
            String accountno=request.getParameter("accountno");
            String transid=request.getParameter("transID");
            
            String amount=request.getParameter("amount");
            String date=request.getParameter("date");
            String refe=request.getParameter("ref");
            
//           out.println(transid);
//           out.println(accountno);
//           out.println(amount);
//           out.println(date);
//           out.println(refe);
//           
           try
           {
               String viewquery="select * from transactionbank where accountno='"+accountno+"';";
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery(viewquery);
               
               int lastbal=0;
               while(rs.next())
               {
                   lastbal=rs.getInt(7);
               }
                      
               String cashdepquery="insert into transactionbank values(?,?,?,?,?,?,?);";
               
               PreparedStatement pst=con.prepareStatement(cashdepquery);
               
               pst.setString(1,accountno);
               pst.setString(2,refe);
               pst.setString(3,date);
               pst.setString(4,transid);
               pst.setInt(5,Integer.parseInt(amount));
               pst.setInt(6,0);
               pst.setInt(7,(lastbal+Integer.parseInt(amount)));
               
               pst.executeUpdate();
               
               out.println("transaction done..... cash deposited");
               
               
               
               out.println("transaction done... cash deposited");
               
               String q1="select * from "+accountno;
               Statement stmt2=con.createStatement();
               ResultSet rs2=stmt2.executeQuery(q1);
               
               int lastbalcust=0;
               while(rs2.next())
               {
                   lastbalcust=rs2.getInt(7);
               }
               
               String q4="insert into "+accountno+" values(?,?,?,?,?,?,?);";
               PreparedStatement pst2=con.prepareStatement(q4);
               
               pst2.setString(1,accountno);
               pst2.setString(2,refe);
               pst2.setString(3,date);
               pst2.setString(4,transid);
               pst2.setInt(5,Integer.parseInt(amount));
               pst2.setInt(6,0);
               pst2.setInt(7,lastbalcust+Integer.parseInt(amount));
               
               pst2.executeUpdate();
               out.println("transaction donne in customer table");
               
               
               
               
               
           }
           catch(Exception e)
           {
               
           }
           
        
        
       %> 
    </body>
</html>
