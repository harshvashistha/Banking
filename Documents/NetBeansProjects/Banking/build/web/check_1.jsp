<%-- 
    Document   : check
    Created on : Aug 18, 2022, 12:43:59 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            String role=request.getParameter("role");
            String accno=request.getParameter("accno");
            String password=request.getParameter("password");
            
            try
            {
                String q="select * from account";
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(q);
                
                String loginname="";
                
                int count=0;
                while(rs.next())
                {
                    if(role.equalsIgnoreCase(rs.getString(7)) && accno.equalsIgnoreCase(rs.getString(1)) && password.equalsIgnoreCase(rs.getString(8)))
                        
                    {
                        loginname=rs.getString(2);
                        //out.println("login successful <br>");
                        count++;
                        break;
                    }
                }
                
                if(count>0)
                {
                   // response.sendRedirect("success.jsp");
                   // out.println("login success");
                    
                    session.setAttribute("accountno",accno);
                    session.setAttribute("loginname",loginname);
                    session.setAttribute("password",password);
                    
                    if(role.equalsIgnoreCase("ADMIN"))
                    {
                       response.sendRedirect("Admin.jsp");
                    }
                    else{
                        response.sendRedirect("CustomerLogin.jsp");
                    }
                }
                else
                {
                   // RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
                   // dis.include(request, response);
                }
            }
            catch(Exception e)
            {
                
            }
            %>
    </body>
</html>
