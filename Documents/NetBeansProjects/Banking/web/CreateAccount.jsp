<%-- 
    Document   : CreateAccount
    Created on : Aug 22, 2022, 2:48:35 PM
    Author     : hvashistha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <h1>create account</h1>
        <form action="CreateAccountDBMS.jsp">
            <table border='5' bgcolor='CYAN'>
                <tr>
                    <td>account number</td>
                    <td><input type="text" name="accno"</td>
                </tr>
                <tr>
                    <td>customer name</td>
                    <td><input type="text" name="name"</td>
                </tr>
                
                <tr>
                    <td>Gender</td>
                    <td><select name="gender">
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="text" name="DOB"</td>
                </tr>
                
                <tr>
                    <td>addresse</td>
                    <td><input type="text" name="address"</td>
                </tr>
                
                <tr>
                    <td>mobile</td>
                    <td><input type="text" name="Contactno"</td>
                </tr>
                <tr>
                    <td>role</td>
                    <td><input type="text" name="role"</td>
                </tr>
                
                 <tr>
                    <td>password</td>
                    <td><input type="text" name="password"</td>
                </tr>
                 <tr>
                    <td>security question</td>
                    <td><select name="sques">
                            <option>what is pet name</option>
                            <option>nick name</option>
                        
                        </select></td>
                </tr>
                 <tr>
                    <td>security answer</td>
                    <td>
                        <input type="text" name="sanswer"</td>
                </tr>
                
                <tr>
                    <td><input type="submit" name="b1" value="Create"</td>
                    <td><input type="RESET" name="b2" value="RESET"></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
