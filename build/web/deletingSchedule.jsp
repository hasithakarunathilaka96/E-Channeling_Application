<%@page import="com.util.AppointmentValidate"%>
<%@page import="com.bean.AppointmentBean"%>
<%@page import="com.util.ScheduleValidate"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
    <% 
        String SdocId = request.getParameter("docId");
        String Sdate = request.getParameter("date");

        ScheduleBean schedule = new ScheduleBean(SdocId,Sdate);
        boolean IsValid = ScheduleValidate.validateScheduleDelete(schedule);

        AppointmentBean appoint = new AppointmentBean(SdocId,Sdate);
        boolean IsValid1 = AppointmentValidate.validateAppointmentDelete(appoint);

        if(IsValid){   
    %>
            <script>
            alert("You are Successfully deleted <%= Sdate %> Schedule!");
            </script>
            <jsp:include page="WelcomeDoctor.jsp"/>
    <% 
        }
        else{
    %>
            <script>
            alert("Please Try Again!");
            </script>
            <jsp:include page="WelcomeDoctor.jsp"/>
    <% 
        }
    %>
    </body>
</html>
