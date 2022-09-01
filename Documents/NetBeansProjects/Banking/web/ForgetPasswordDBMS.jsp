<%-- 
    Document   : ForgetPasswordDBMS
    Created on : Aug 22, 2022, 2:50:33 PM
    Author     : hvashistha
--%>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            String accountno=request.getParameter("accountno");
            String sques=request.getParameter("sques");
            String answer=request.getParameter("answer");
            
            //String s="select * from account where accno="+accountno+" AND sans="+answer+"";
            
            try
        {
            String s1="select * from account where accno='"+accountno+"';";
            Statement stmt=con.createStatement();
                
                ResultSet res=stmt.executeQuery(s1);
                
                while(res.next())
                {
                    if(answer.equals(res.getString(10)) && sques.equalsIgnoreCase(res.getString(9)))
                    {
                        session.setAttribute("accountno",accountno);
                        RequestDispatcher rd=request.getRequestDispatcher("afterforgetpassDBMS.jsp");
                        rd.forward(request, response);
                    }
                }
        }
        
        catch(Exception e)
                {
                    
                }
        
            
            %>
    </body>
</html>
