<%-- 
    Document   : CreateAccountDBMS
    Created on : Aug 22, 2022, 2:49:01 PM
    Author     : hvashistha
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="dbcon.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <h1> create account dbms</h1>
        
        <%
            String accno=request.getParameter("accno");
            String name=request.getParameter("name");
            
            String gender=request.getParameter("gender");
            String dob=request.getParameter("DOB");
            String address=request.getParameter("address");
            String contactno=request.getParameter("Contactno");
            String role=request.getParameter("role");  
            String password=request.getParameter("password");
            String squestion=request.getParameter("sques");
            String sanswer=request.getParameter("sanswer");
            
            
//            out.println(accno);
//            out.println(name);
//            
//            out.println(gender);
//            out.println(dob);
//            out.println(address);
//            out.println(contactno);
            
            try
            {
                String newaccountinsert="insert into account values(?,?,?,?,?,?,?,?,?,?);";
                
                PreparedStatement pst=con.prepareStatement(newaccountinsert);
                
                pst.setString(1,accno);
                pst.setString(2,name);
                pst.setString(3,gender);
                pst.setString(4,dob);
                pst.setString(5,address);
                pst.setInt(6,Integer.parseInt(contactno));
                pst.setString(7,"customer");
                pst.setString(8,password);
                pst.setString(9,squestion);
                pst.setString(10,sanswer);
                pst.executeUpdate();
                out.println("account succesfully created");
                
                String q2="create table "+accno+"(accountno varchar(20),ref varchar(20),dotrans varchar(20),transid varchar(20),depamount int,wdrwamount int,netbal int);";
                
                PreparedStatement pst2=con.prepareStatement(q2);
                pst2.executeUpdate();
                
                
            }
            catch(Exception e)
            {
                out.println(e.getMessage());
            }
           
            
            
            %>
           
    </body>
</html>


