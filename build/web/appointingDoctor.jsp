<%@page import="com.util.ScheduleValidate"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.AppointmentValidate"%>
<%@page import="com.bean.AppointmentBean"%>
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
        String SpatNIC = request.getParameter("patNIC");

        AppointmentBean appointment1 = new AppointmentBean(SdocId,Sdate);
        ResultSet rs = AppointmentValidate.ValidateAppointmentNumber(appointment1);

        int appointmentNumber = 1 ;
        while(rs.next()){
            appointmentNumber = appointmentNumber + 1;
        }

        ScheduleBean schedule = new ScheduleBean(SdocId,Sdate);
        ResultSet rs1 = ScheduleValidate.validatePatientNumber(schedule);

        int patientNumber = 0 ;
        while(rs1.next()){
            patientNumber = rs1.getInt("PATIENTNUMBER");
        }

        if(appointmentNumber < patientNumber){

            AppointmentBean appointment = new AppointmentBean(SdocId,Sdate,SpatNIC,appointmentNumber);
            boolean IsValid = AppointmentValidate.validateAppointment(appointment); 

            if(IsValid){   
    %>
            <script>
                alert("You are Successfully appointed to DOCTOR <%= SdocId %> for <%= Sdate %>. Your appointment number is <%=appointmentNumber%>.");
            </script>
            <jsp:include page="WelcomePatient.jsp"/>
    <% 
            }
            else{
    %>
                <script>
                    alert("You are already appointed!");
                </script>
                <jsp:include page="WelcomePatient.jsp"/>
    <% 
            }
        }    
        else{            
    %>
            <script>
                alert("Number of patients are filled. please try again for another date. Thank you!");
            </script>
            <jsp:include page="WelcomePatient.jsp"/>
    <%
        }
    %>                
    </body>
</html>
