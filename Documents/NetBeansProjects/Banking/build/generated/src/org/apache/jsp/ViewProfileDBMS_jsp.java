package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ViewProfileDBMS_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/dbcon.jsp");
    _jspx_dependants.add("/Style.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

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
            
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write('\n');
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <title>Hello, world!</title>\n");
      out.write("  </head>\n");
      out.write("  <style>\n");
      out.write("     \n");
      out.write("  </style>\n");
      out.write("  <body>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <!-- Optional JavaScript -->\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <h1 align=\"center\" font-size=\"40px\">view profile dbms</h1>\n");
      out.write("        ");

            
            out.println(session.getAttribute("loginname"));
            out.println("     "+session.getAttribute("accountno"));
            
           try
           {
            String viewquery="select * from account where accno='"+session.getAttribute("accountno") +"';";
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(viewquery);
            
            
            while(rs.next())
                {
                    out.println("<h1 class=' text-center text-primary ' >hi this is "+session.getAttribute("loginname")+" & Account Number is "+session.getAttribute("accountno")+"..</h1>");
        
        
                  out.println("<table class='table table-bordered table-dark'");
         out.println("<thead>");
    out.println("<tr>");
      out.println("<th scope='col'>ACCOUNT NUMBER</th>");
      out.println("<th scope='col'>NAME</th>");
      out.println("<th scope='col'>GENDER</th>");
      out.println("<th scope='col'>DATE OF BIRTH</th>");
      out.println("<th scope='col'>ADDRESS</th>");
      out.println("<th scope='col'>MOBILE NUMBER</th>");
      out.println("<th scope='col'>ROLE</th>");
      
      
   out.println("</tr>");
  out.println("</thead>");
  out.println("<tbody>");
    out.println("<tr>");
      out.println("<th scope='row'>"+rs.getString(1)+"</th>");
      out.println("<td>"+rs.getString(2)+"</td>");
      out.println("<td>"+rs.getString(3)+"</td>");
      out.println("<td>"+rs.getString(4)+"</td>");
      out.println("<td>"+rs.getString(5)+"</td>");
      out.println("<td>"+rs.getInt(6)+"</td>");
      out.println("<td>"+rs.getString(7)+"</td>");
      out.println("</tr>");
    
  out.println("</tbody>");
  out.println("<br>");
out.println("</table>");
                }
           }
           
           catch(Exception e)
           {
               
           }
            
         
      out.write("\n");
      out.write("         \n");
      out.write("         <a href=\"editprofile.jsp\">edit profile</a> \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
