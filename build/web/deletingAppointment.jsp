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
        String SpatNIC = request.getParameter("patNIC");

        AppointmentBean appoint = new AppointmentBean(SdocId,Sdate,SpatNIC);
        boolean IsValid = AppointmentValidate.validateAppointmentDelete1(appoint);

        if(IsValid){   
    %>
            <script>
                alert("You are Successfully deleted <%= Sdate %> appointment!");
            </script>
            <jsp:include page="WelcomePatient.jsp"/>
    <% 
        }
        else{
    %>
            <script>
                alert("Please Try Again!");
            </script>
            <jsp:include page="WelcomePatient.jsp"/>
    <% 
        }
    %>
    </body>
</html>
