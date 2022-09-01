package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class FundTransferDBMS_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   \n");
      out.write("    <body>\n");
      out.write("        <h1>fund transfer DBMS</h1>\n");
      out.write("        \n");
      out.write("        ");

            String transid=request.getParameter("transid");
            String accountfrom=request.getParameter("accountfrom");
            String accountto=request.getParameter("accountto");
            String date=request.getParameter("date");
            String amount=request.getParameter("amount");
            
            try
            {
                String viewquery="select * from "+accountfrom;
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery(viewquery);
                        
                 int lastbal=0;
                 while(rs.next())
                 {
                     lastbal=rs.getInt(7);
                 }
                 String q1="insert into "+accountfrom+" values(?,?,?,?,?,?,?);";
                 PreparedStatement pst=con.prepareStatement(q1);
                 
                 pst.setString(1,accountfrom);
                 pst.setString(2,accountto);
                 pst.setString(3,date);
                 pst.setString(4,transid);
                 pst.setInt(5,0);
                 pst.setInt(6,Integer.parseInt(amount));
                 pst.setInt(7,(lastbal-Integer.parseInt(amount)));
                 
                 pst.executeUpdate();
                 
                        
                String q2="insert into "+accountto+" values(?,?,?,?,?,?,?)";
                PreparedStatement pst2=con.prepareStatement(q2);
                
                pst2.setString(1,accountto);
                pst2.setString(2,accountfrom);
                pst2.setString(3,date);
                pst2.setString(4,transid);
                pst2.setInt(5,Integer.parseInt(amount));
                pst2.setInt(6,0);
                pst2.setInt(7,(lastbal+Integer.parseInt(amount)));
                
                pst2.executeUpdate();
                
                
                
                
                
               
                        
                        
                        
                        
                        
                
                
                
               out.println("fund transfer done..."); 
            }
            catch(Exception e)
            {
                out.println("failed"+e.getMessage());
            }
            
            
         
      out.write("           \n");
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
