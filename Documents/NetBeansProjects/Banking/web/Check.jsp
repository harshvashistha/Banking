<%-- 
    Document   : check
    Created on : Aug 22, 2022, 2:43:43 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <h1>check page</h1>
        
        <%
            String role=request.getParameter("role");
            String name=request.getParameter("name");
            String password=request.getParameter("password");
            
            if(role.equalsIgnoreCase("ADMIN") && name.equalsIgnoreCase("harsh")&& password.equals("123"))
            {
                response.sendRedirect("Admin.jsp");
            }
            else if(role.equalsIgnoreCase("Customer") && name.equalsIgnoreCase("rajat")&& password.equalsIgnoreCase("123"))
            {
                response.sendRedirect("CustomerLogin.jsp");
            }
            else
            {
                RequestDispatcher dis=request.getRequestDispatcher("Login.jsp");
                dis.include(request,response);
                out.println("<invalid login & password >");
            }
            
            %>
    </body>
</html>
