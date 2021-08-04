<%@page import="com.util.ScheduleValidate"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Guard</title>
    </head>
    <body>
    <%
        String SdocId = request.getParameter("docId");
        String Sdate = request.getParameter("date");
        String Stime = request.getParameter("time");
        String SpatNum = request.getParameter("patNum");

        ScheduleBean schedule1 = new ScheduleBean(SdocId,Sdate);
        boolean IsValid1 = ScheduleValidate.validateDate(schedule1);

        if(IsValid1){
    %>
            <script>
            alert("You are already scheduled for this day!");
            </script>
            <jsp:include page="WelcomeDoctor.jsp"/>
    <% 
        }
        else{           
            ScheduleBean schedule = new ScheduleBean(SdocId,Sdate,Stime,SpatNum);
            boolean IsValid = ScheduleValidate.ValidateSchedule(schedule);

            if(IsValid){ 
        %>
                <script>
                alert("You are Successfully added <%= Sdate %> Schedule for <%= SpatNum %> patients at <%= Stime %>!");
                </script>
                <jsp:include page="WelcomeDoctor.jsp"/>
        <%
                }
                else{
        %>
                    <script>
                    alert("Please Try Again!");
                    </script>
                    <jsp:include page="Welcome.jsp"/>
        <% 
                }
            }
        %>               
    </body>
</html>
