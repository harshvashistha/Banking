package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class DepositeDBMS_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/dbcon.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1>deposit login</h1>\n");
      out.write("        ");

            String accountno=request.getParameter("accountno");
            String transid=request.getParameter("transID");
            
            String amount=request.getParameter("amount");
            String date=request.getParameter("date");
            String refe=request.getParameter("ref");
            
//           out.println(transid);
//           out.println(accountno);
//           out.println(amount);
//           out.println(date);
//           out.println(refe);
//           
           try
           {
               String viewquery="select * from transactionbank";
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery(viewquery);
               
               int lastbal=0;
               while(rs.next())
               {
                   lastbal=rs.getInt(7);
               }
                      
               String cashdepquery="insert into transactionbank values(?,?,?,?,?,?,?);";
               
               PreparedStatement pst=con.prepareStatement(cashdepquery);
               
               pst.setString(1,accountno);
               pst.setString(2,refe);
               pst.setString(3,date);
               pst.setString(4,transid);
               pst.setInt(5,Integer.parseInt(amount));
               pst.setInt(6,0);
               pst.setInt(7,(lastbal+Integer.parseInt(amount)));
               
               pst.executeUpdate();
               
               out.println("transaction done..... cash deposited");
               
               
               
               out.println("transaction done... cash deposited");
               
           }
           catch(Exception e)
           {
               
           }
           
        
        
       
      out.write(" \n");
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
