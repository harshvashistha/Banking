<%@page import="java.sql.*" %>
<%--<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>--%>



<html>
    <body>
        <%!Connection con;%>
        <%
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
            String connectionURL=("jdbc:mysql://localhost:3306/soprabanking");
            String DBUSER="root";
            String DBPASS="root";
            con=DriverManager.getConnection(connectionURL,DBUSER,DBPASS);
            
            out.println("Connection Success");
                
                        
                
            }
            catch (Exception e){
                        out.println("connection failed...."+e.getMessage());
                }
            %>
        
    </body>
</html>