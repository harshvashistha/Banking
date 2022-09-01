<%-- 
    Document   : TransactionDBMS
    Created on : Aug 24, 2022, 3:25:34 PM
    Author     : hvashistha
--%>
<%@include file="dbcon.jsp" %>
<%@include file="Transaction.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
        
            String choice=request.getParameter("choice");
            
            
            
           
            try
            {
                String viewquery="";
               if(choice.equalsIgnoreCase("accountno"))
               {
                   String ac=request.getParameter("text1");
                   viewquery="select * from transactionbank where accountno='"+ac+"';";
               }
               else if(choice.equalsIgnoreCase("dateofTransaction"))
               {
                   String ac1=request.getParameter("text1");
                   viewquery="select * from transactionbank where dotrans='"+ac1+"';";
               }
               else if(choice.equalsIgnoreCase("transactionID"))
               {
                   String ac1=request.getParameter("text1");
                   viewquery="select * from transactionbank where transid='"+ac1+"';";
               }
               
               else
               {
                   viewquery="select * from transactionbank";
               }
                
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                
                while(rs.next())
                {
                    out.println(ACCOOUNT NUMBER);
                    out.println(" "+rs.getString(1));
                    out.println(" "+rs.getString(2));
                    out.println(" "+rs.getString(3));
                    out.println(" "+rs.getString(4));
                    out.println(" "+rs.getInt(5));
                    out.println(" "+rs.getInt(6));
                    out.println(" "+rs.getInt(7));
                    
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
