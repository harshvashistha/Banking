<%-- 
    Document   : ViewProfileDBMS
    Created on : Aug 22, 2022, 2:52:02 PM
    Author     : hvashistha
--%>
<%@include file="dbcon.jsp" %>
<%@include file="Style.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
       
        <h1 align="center" font-size="40px">view profile dbms</h1>
        <%
            
//            out.println(session.getAttribute("loginname"));
//            out.println("     "+session.getAttribute("accountno"));
            
           try
           {
            String viewquery="select * from account where accno='"+session.getAttribute("accountno") +"';";
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(viewquery);
            
            
            while(rs.next())
                {
                    out.println("<h1 class=' text-center text-primary ' >hi this is "+session.getAttribute("loginname")+" & Account Number is "+session.getAttribute("accountno")+"..</h1>");
        
        
                  out.println("<table class='table table-bordered table-dark'");
         out.println("<thead>");
    out.println("<tr>");
      out.println("<th scope='col'>ACCOUNT NUMBER</th>");
      out.println("<th scope='col'>NAME</th>");
      out.println("<th scope='col'>GENDER</th>");
      out.println("<th scope='col'>DATE OF BIRTH</th>");
      out.println("<th scope='col'>ADDRESS</th>");
      out.println("<th scope='col'>MOBILE NUMBER</th>");
      out.println("<th scope='col'>ROLE</th>");
      
      
   out.println("</tr>");
  out.println("</thead>");
  out.println("<tbody>");
    out.println("<tr>");
      out.println("<th scope='row'>"+rs.getString(1)+"</th>");
      out.println("<td>"+rs.getString(2)+"</td>");
      out.println("<td>"+rs.getString(3)+"</td>");
      out.println("<td>"+rs.getString(4)+"</td>");
      out.println("<td>"+rs.getString(5)+"</td>");
      out.println("<td>"+rs.getInt(6)+"</td>");
      out.println("<td>"+rs.getString(7)+"</td>");
      out.println("</tr>");
    
  out.println("</tbody>");
  out.println("<br>");
out.println("</table>");
                }
           }
           
           catch(Exception e)
           {
               
           }
            
         %>
         
         <a href="editprofile.jsp">edit profile</a> 
    </body>
</html>
