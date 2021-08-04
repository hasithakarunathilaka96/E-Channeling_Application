<%@page import="com.util.ScheduleValidate"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title><title>Health Guard</title>
    <link rel="stylesheet" href="css/appoint2.css" type="text/css">

    </head>   
    <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic15.jpg);
                  background-repeat: no-repeat;
                  background-size: 100% 100%;
                  background-attachment: fixed;"> 
    <%
        String SdocId = (String) session.getAttribute("DOCID");
        ScheduleBean schedule = new ScheduleBean(SdocId);

        ResultSet rs = ScheduleValidate.validateUser(schedule);
        if (rs != null) {
    %>
            <div class="det">
                <div class="tbl">
                    <table class="t2">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Number of Patients</th>
                            </tr>
                        </thead>
                        <%
                            while (rs.next()) {
                        %> 
                        <tbody>
                            <tr>
                                <td><%=rs.getString("DOCTORID")%></td>
                                <td><%=rs.getDate("DATE")%></td>
                                <td><%=rs.getTime("TIME")%></td>
                                <td><%=rs.getString("PATIENTNUMBER")%></td>
                                <td>                                            
                                    <form method="post" action="updateSchedule.jsp">
                                        <span class="action_btn"> 
                                            <input type="submit" value="UPDATE"/> 
                                            <input type="hidden" name ="docId" value="<%=rs.getString("DOCTORID")%>"/> 
                                            <input type="hidden" name ="date" value="<%=rs.getDate("DATE")%>"/> 
                                        </span>
                                    </form>
                                    &emsp;&emsp;
                                    <form method="post" action="deletingSchedule.jsp"> 
                                        <span class="action_btn"> 
                                            <input type="submit" value="DELETE"/> 
                                            <input type="hidden" name ="docId" value="<%=rs.getString("DOCTORID")%>"/> 
                                            <input type="hidden" name ="date" value="<%=rs.getDate("DATE")%>" /> 
                                        </span>
                                    </form>                                      			
                                </td>
                            </tr>                   
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
    <%
            } else {
    %>
                <h1>There are no schedules added</h1>
    <%
            }
    %>      
    </body>
    <jsp:include page="nav.jsp"/> 
</html>
