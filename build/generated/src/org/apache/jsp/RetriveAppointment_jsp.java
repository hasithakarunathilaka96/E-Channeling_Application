package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.ScheduleValidate;
import com.bean.ScheduleBean;
import com.util.AppointmentValidate;
import java.sql.ResultSet;
import com.bean.AppointmentBean;

public final class RetriveAppointment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title><title>Health Guard</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"appoint1.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu1.jsp", out, false);
      out.write("\n");
      out.write("    <body style=\"background-image: url(img/pic15.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 100% 100%;\n");
      out.write("                background-attachment: fixed;\"> \n");
      out.write("        ");

            String SpatNIC = (String) session.getAttribute("PATNIC");
            AppointmentBean appointment = new AppointmentBean(SpatNIC);
            ResultSet rs = AppointmentValidate.ValidateAppointmentPatient(appointment);

            if (rs != null) {
                
      out.write("\n");
      out.write("                \n");
      out.write("                <div class=\"det\">\n");
      out.write("            <div class=\"tbl\">\n");
      out.write("                <table class=\"t2\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Doctor Name</th>\n");
      out.write("                            <th>Doctor Specialization</th>\n");
      out.write("                            <th>Appointment Date </th>\n");
      out.write("                            <th>Appointment Time</>\n");
      out.write("                            <th>Appointment Number</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                \n");
      out.write("                ");

                while (rs.next()) {
                    String SdocId = rs.getString("DOCTORID");
                    String SdocDate = rs.getString("DATE");
                    ScheduleBean schedule = new ScheduleBean(SdocId,SdocDate);
                    ResultSet rs1 = ScheduleValidate.validateTime(schedule);
                    if(rs!=null){
                        
        
      out.write("\n");
      out.write("        ");

                        while (rs1.next()) {
                          
        
      out.write("\n");
      out.write("                           <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(rs.getString("NAME"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("SPECIALIZATION"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("DATE"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs1.getString("TIME"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("APPOINTMENTNUMBER"));
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                \n");
      out.write("                                <form action=\"deletingAppointment.jsp\">\n");
      out.write("                        <span class=\"action_btn\">\n");
      out.write("                            <input type=\"submit\" value=\"CANCEL\"/>\n");
      out.write("                            <input type=\"hidden\" name =\"docId\" value=\"");
      out.print(rs.getString("DOCTORID") );
      out.write("\"/> \n");
      out.write("                            <input type=\"hidden\" name =\"date\" value=\"");
      out.print(rs.getDate("DATE") );
      out.write("\" /> \n");
      out.write("                            <input type=\"hidden\" name =\"patNIC\" value=\"");
      out.print( SpatNIC );
      out.write("\" /> \n");
      out.write("                        </span>\n");
      out.write("                    </form>\n");
      out.write("                \n");
      out.write("\t\t\t\n");
      out.write("                            </td>\n");
      out.write("                        </tr> \n");
      out.write("        ");

                        }
                        
                 
                    }
               
                }
      out.write("\n");
      out.write("                             </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>");

            }
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "nav.jsp", out, false);
      out.write("\n");
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
