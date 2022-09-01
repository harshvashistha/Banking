<%-- 
    Document   : ViewCustomerDBMS
    Created on : Aug 22, 2022, 3:21:39 PM
    Author     : hvashistha
--%>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <h1>view customer dbms</h1>
        
        <%
        
            String choice=request.getParameter("choice");
            
            
            
           
            try
            {
                String viewquery="";
               if(choice.equalsIgnoreCase("ACCOUNTNO"))
               {
                   String ac=request.getParameter("txt1");
                   viewquery="select * from account where accno='"+ac+"';";
               }
               else
               {
                   viewquery="select * from account";
               }
                
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                
                while(rs.next())
                {
                    out.println(" "+rs.getString(1));
                    out.println(" "+rs.getString(2));
                    out.println(" "+rs.getString(3));
                    out.println(" "+rs.getString(4));
                    out.println(" "+rs.getString(5));
                    out.println(" "+rs.getInt(6));
                    out.println(" "+rs.getString(7));
                    out.println(" "+rs.getString(8));
                    out.println(" "+rs.getString(9));
                    out.println(" "+rs.getString(10));
                    out.println("<br>");
                  
                    
                    
                    
                }
            }
            catch(Exception e)
            {
                out.println("data not fouind"+ e.getMessage());
            }
            
            
         %>
    </body>
</html>
