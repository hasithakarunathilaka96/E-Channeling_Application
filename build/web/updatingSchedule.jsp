<%@page import="com.util.ScheduleValidate"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
    <% 
        String SdocId = request.getParameter("docId");
        String Sdate = request.getParameter("date");
        String Stime = request.getParameter("time");
        String SpatNum = request.getParameter("patNum");

        ScheduleBean schedule = new ScheduleBean(SdocId,Sdate,Stime,SpatNum);
        boolean IsValid = ScheduleValidate.validateScheduleUpdate(schedule);

        if(IsValid){   
    %>
            <script>
                alert("You are Successfully updated <%= Sdate %> Schedule!");
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
