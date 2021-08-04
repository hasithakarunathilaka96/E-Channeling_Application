package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Welcome1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title><title>Health Guard</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"nw.css\" type=\"text/css\">\n");
      out.write("            \n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu1.jsp", out, false);
      out.write("\n");
      out.write("    <body style=\"background-image: url(img/pic3.png);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100% 100%;\n");
      out.write("                background-attachment: fixed;\">\n");
      out.write("        \n");
      out.write("        <div class=\"dis\">\n");
      out.write("            <h1>We Take Care Of Your Healthy Health</h1>\n");
      out.write("        </div>\n");
      out.write("        <form action=\"addAppointment.jsp\">\n");
      out.write("            <div class=\"add\">\n");
      out.write("                <input type=\"submit\" value=\"Add Appointment\">\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        <form action=\"updatePatient.jsp\">\n");
      out.write("            <div class=\"edit\">\n");
      out.write("                <input type=\"submit\" value=\"Update Personal Data\">\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        <form action=\"RetriveAppointment.jsp\">\n");
      out.write("            <div >\n");
      out.write("                <input type=\"submit\" value=\"My Appointments\">\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "nav.jsp", out, false);
      out.write(" \n");
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
