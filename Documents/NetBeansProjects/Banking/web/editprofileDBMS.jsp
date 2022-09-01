<%-- 
    Document   : editprofileDBMS
    Created on : Aug 24, 2022, 4:27:29 PM
    Author     : hvashistha
--%>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            
            
            //out.println(session.getAttribute("accountno"));
        String choice=request.getParameter("choice");
        
        try
        {
            String query="";
            String s="";
            if(choice.equalsIgnoreCase("name"))
            {
                s=request.getParameter("text1");
                query="update account set cname='"+s+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            else if(choice.equalsIgnoreCase("address"))
            {
               s=request.getParameter("text1");
               query="update account set address='"+s+"' where accno='"+session.getAttribute("accountno")+"';";
               
            }
            else if(choice.equalsIgnoreCase("mobile"))
            {
                s=request.getParameter("text1");
                query="update account set mob='"+s+"' where accno='"+session.getAttribute("accountno")+"';";
                
            }
            else if(choice.equalsIgnoreCase("password"))
            {
                s=request.getParameter("text1");
                query="update account set password='"+s+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            else if(choice.equalsIgnoreCase("secQ"))
            {
                s=request.getParameter("text1");
                query="update account set sques='"+s+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            else if(choice.equalsIgnoreCase("secA"))
            {
                s=request.getParameter("text1");
                query="update account set sans='"+s+"' where accno='"+session.getAttribute("accountno")+"';";
            }
            
            PreparedStatement pst=con.prepareStatement(query);
            pst.executeUpdate();
            
            out.println("profile updated successfully...........");
        }
        catch(Exception e)
        {
            out.println("error   "+e.getMessage());
        }
        %>
        
        <a href="ViewProfileDBMS.jsp">view profile</a>
    </body>
</html>
