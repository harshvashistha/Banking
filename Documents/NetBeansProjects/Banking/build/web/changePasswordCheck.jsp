<%-- 
    Document   : changePasswordCheck
    Created on : Aug 18, 2022, 12:43:49 PM
    Author     : hvashistha
--%>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            out.println(session.getAttribute("accountno"));
            out.println("       "+session.getAttribute("loginname"));
       %>
        <% 
            String s1oldpass=request.getParameter("oldpass");
            String s1newpass=request.getParameter("newpass");
            String s1ncpass=request.getParameter("cnpass");
            
            //String loginuid=(String)session.getAttribute("userid");
            //out.println(s1oldpass);
            
            
            try
            {
                if(s1newpass.equals(s1ncpass))
                {
                    if(session.getAttribute("password").equals(s1oldpass));
                    {
                        try{                    
                            String updatepassquery="update account set password='"+s1newpass+"'where accno='"+session.getAttribute("accountno")+"';";
                            
                            PreparedStatement pst=con.prepareStatement(updatepassquery);
                            pst.executeUpdate();
                            
                            out.println(" dear customer "+session.getAttribute("loginname"));
                            out.println("dear "+"password changeddd.... <br>");
                            
                            session.invalidate();
        
                           response.setHeader("Cache-Control","no-store");
                           response.setHeader("Pragma","no-cache");
                           response.setHeader("Expires","0");//prevent caching at proxy server
                            out.println("<a href=Login.jsp>login again</a>");
                            
                            }
                        catch(Exception ee)
                        {
                            out.println("<br> password not change"+ee);
                        }
                    }
                
                    
                         
                }
            
                else
                {
                    out.println("<br> new password & confirm password not match");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
            %>
        
    </body>
</html>
