


<%@include file="dbcon.jsp" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <h1>fund transfer DBMS</h1>
        
        <%
            out.println(session.getAttribute("accountno"));
            out.println("       "+session.getAttribute("loginname"));
       %>
        
        <%
            String accountfrom=(String)session.getAttribute("accountno");
            String transid=request.getParameter("transid");
           // String accountfrom=request.getParameter("accountfrom");
            String accountto=request.getParameter("accountto");
            String date=request.getParameter("date");
            String amount=request.getParameter("amount");
            
            try
            {
                String viewquery="select * from "+accountfrom;
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                        
                 int lastbal=0;
                 while(rs.next())
                 {
                     lastbal=rs.getInt(7);
                 }
                 String q1="insert into "+accountfrom+" values(?,?,?,?,?,?,?);";
                 PreparedStatement pst=con.prepareStatement(q1);
                 
                 pst.setString(1,accountfrom);
                 pst.setString(2,accountto);
                 pst.setString(3,date);
                 pst.setString(4,transid);
                 pst.setInt(5,0);
                 pst.setInt(6,Integer.parseInt(amount));
                 pst.setInt(7,(lastbal-Integer.parseInt(amount)));
                 
                 pst.executeUpdate();
                 
                 
                 ///////////////////
                 
                 String viewquery1="select * from "+accountto;
                Statement stmt1=con.createStatement();
                ResultSet rs1=stmt.executeQuery(viewquery1);
                 
                int lastbal2=0;
                 while(rs1.next())
                 {
                     lastbal2=rs1.getInt(7);
                 }
                 
                        
                String q2="insert into "+accountto+" values(?,?,?,?,?,?,?);";
                PreparedStatement pst2=con.prepareStatement(q2);
                
                pst2.setString(1,accountto);
                pst2.setString(2,accountfrom);
                pst2.setString(3,date);
                pst2.setString(4,transid);
                pst2.setInt(5,Integer.parseInt(amount));
                pst2.setInt(6,0);
                pst2.setInt(7,(lastbal2+Integer.parseInt(amount)));
                
                pst2.executeUpdate();
                
                
                
                
                
               
                        
                        
                        
                        
                        
                
                
                
               out.println("fund transfer done..."); 
            }
            catch(Exception e)
            {
                out.println("failed"+e.getMessage());
            }
            
            
         %>           
    </body>
</html>
