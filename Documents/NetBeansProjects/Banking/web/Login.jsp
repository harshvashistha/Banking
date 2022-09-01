<%-- 
    Document   : login
    Created on : Aug 22, 2022, 2:42:41 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
    .st{
/*        background-image: url('pic.jpg');
            background-size:100% 400%;
            background-repeat: no-repeat;*/
position: absolute;
top: 50%;
left: 40%;
    
    }
    </style>
    
    <body align="center">
        <img src="pic.jpg" height="100%" width="100%">

        <h1>login page</h1>
        <form action="check_1.jsp" method="post" class="st" align="center">
            
            <table border="2" bgcolor="white" >
                <tr>
                    <td>Select role<select name="role">
                     <option>ADMIN</option>
                <option>customer</option>
                </td>
                    
            </select><br>
                <tr><td> enter account no<input type="text" name="accno"><br></td></tr>
                <tr>   <td>enter password<input type="text" name="password"><br></td>
                </tr>
                <tr> <td><input type="submit" name="b1" value="Login">
                    <input type="RESET" name="b2" value="RESET"></td>
                    
                <a href="ForgetPassword.jsp">forget pass</a>
            </tr>
            
           </table> 
                  
        </form>
        
        
    </body>
</html>
