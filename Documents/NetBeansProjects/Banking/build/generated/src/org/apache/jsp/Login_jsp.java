package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <style>\n");
      out.write("    .st{\n");
      out.write("/*        background-image: url('pic.jpg');\n");
      out.write("            background-size:100% 400%;\n");
      out.write("            background-repeat: no-repeat;*/\n");
      out.write("position: absolute;\n");
      out.write("top: 50%;\n");
      out.write("left: 40%;\n");
      out.write("    \n");
      out.write("    }\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    <body align=\"center\">\n");
      out.write("        <img src=\"pic.jpg\" height=\"100%\" width=\"100%\">\n");
      out.write("\n");
      out.write("        <h1>login page</h1>\n");
      out.write("        <form action=\"check_1.jsp\" method=\"post\" class=\"st\" align=\"center\">\n");
      out.write("            \n");
      out.write("            <table border=\"2\" bgcolor=\"white\" >\n");
      out.write("                <tr>\n");
      out.write("                    <td>Select role<select name=\"role\">\n");
      out.write("                     <option>ADMIN</option>\n");
      out.write("                <option>customer</option>\n");
      out.write("                </td>\n");
      out.write("                    \n");
      out.write("            </select><br>\n");
      out.write("                <tr><td> enter account no<input type=\"text\" name=\"accno\"><br></td></tr>\n");
      out.write("                <tr>   <td>enter password<input type=\"text\" name=\"password\"><br></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr> <td><input type=\"submit\" name=\"b1\" value=\"Login\">\n");
      out.write("                    <input type=\"RESET\" name=\"b2\" value=\"RESET\"></td>\n");
      out.write("                    \n");
      out.write("                <a href=\"ForgetPassword.jsp\">forget pass</a>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("           </table> \n");
      out.write("                  \n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        \n");
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
