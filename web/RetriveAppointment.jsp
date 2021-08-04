<%@page import="com.util.ScheduleValidate"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page import="com.util.AppointmentValidate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.bean.AppointmentBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><title>Health Guard</title>
        <link rel="stylesheet" href="css/appoint1.css" type="text/css">
    </head>
    
    <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic15.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;"> 
        <%
            String SpatNIC = (String) session.getAttribute("PATNIC");
            AppointmentBean appointment = new AppointmentBean(SpatNIC);
            ResultSet rs = AppointmentValidate.ValidateAppointmentPatient(appointment);

            if (rs != null) {
                %>
                
                <div class="det">
            <div class="tbl">
                <table class="t2">
                    <thead>
                        <tr>
                            <th>Doctor Name</th>
                            <th>Doctor Specialization</th>
                            <th>Appointment Date </th>
                            <th>Appointment Time</>
                            <th>Appointment Number</th>
                        </tr>
                    </thead>
                
                <%
                while (rs.next()) {
                    String SdocId = rs.getString("DOCTORID");
                    String SdocDate = rs.getString("DATE");
                    ScheduleBean schedule = new ScheduleBean(SdocId,SdocDate);
                    ResultSet rs1 = ScheduleValidate.validateTime(schedule);
                    if(rs!=null){
                        
        %>
        <%
                        while (rs1.next()) {
                          
        %>
                           <tbody>
                        <tr>
                            <td><%=rs.getString("NAME")%></td>
                            <td><%=rs.getString("SPECIALIZATION")%></td>
                            <td><%=rs.getString("DATE")%></td>
                            <td><%=rs1.getString("TIME")%></td>
                            <td><%=rs.getString("APPOINTMENTNUMBER")%></td>
                            <td>
                                
                                <form action="deletingAppointment.jsp">
                        <span class="action_btn">
                            <input type="submit" value="CANCEL"/>
                            <input type="hidden" name ="docId" value="<%=rs.getString("DOCTORID") %>"/> 
                            <input type="hidden" name ="date" value="<%=rs.getDate("DATE") %>" /> 
                            <input type="hidden" name ="patNIC" value="<%= SpatNIC %>" /> 
                        </span>
                    </form>
                
			
                            </td>
                        </tr> 
        <%
                        }
                        
                 
                    }
               
                }%>
                             </tbody>
                </table>
            </div>
        </div><%
            }
        %>


    </body>
    <jsp:include page="nav.jsp"/>
</html>
