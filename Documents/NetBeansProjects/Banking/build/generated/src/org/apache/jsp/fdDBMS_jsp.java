package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;
import java.sql.*;
import java.util.*;

public final class fdDBMS_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("  \n");
      out.write("import ;\n");
      out.write("\n");
      out.write(" \n");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        ");

        String amount=request.getParameter("amount");
        String year=request.getParameter("year");
        
        out.println(session.getAttribute("accountno"));
        
        String account=(session.getAttribute("accountno")).toString();
        
        int inc=(Integer.parseInt(year))*8*(Integer.parseInt(amount))/100;
        
        String s="select * from "+account;
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery(s);
        int last=0;
        while(rs.next())
        {
            last = rs.getInt(7);
        }
        
                
       
        
        int z=last-Integer.parseInt(amount);
        
        String insert2="insert into "+account+" values(?,?,?,?,?,?,?);";
        
        
       
        
        java.util.Date date=new java.util.Date();
java.sql.Date sqlDate=new java.sql.Date(date.getTime());
java.sql.Timestamp sqlTime=new java.sql.Timestamp(date.getTime());
        
        PreparedStatement pst1=con.prepareStatement(insert2);
        
        pst1.setString(1,account);
        pst1.setString(2,"fd");
        pst1.setDate(3,sqlDate);
        pst1.setString(4,"5");
        pst1.setInt(5,0);
        pst1.setInt(6,Integer.parseInt(amount));
        pst1.setInt(7,z);
        
        
        
          pst1.executeUpdate();
        
        String insert="insert into fd values(?,?,?,?)";
        PreparedStatement pst=con.prepareStatement(insert);
        
        pst.setString(1,account);
        pst.setInt(2,Integer.parseInt(amount));
        pst.setInt(3,Integer.parseInt(year));
        pst.setInt(4,Integer.parseInt(amount)+inc);
        pst.setDate(5,sqlDate);
        
        
        pst.executeUpdate();
        
        out.println("fd done .......done");
                
        
        
        
      out.write("\n");
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
