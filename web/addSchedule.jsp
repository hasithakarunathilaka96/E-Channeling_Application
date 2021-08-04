<%@page import="com.util.ScheduleValidate"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><title>Health Guard</title>
       <link rel="stylesheet" href="css/adds.css" type="text/css">
            
    </head>
    <style>

    </style>
    <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic3.png);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;">  
        
    <% String SdocID = (String)session.getAttribute("DOCID"); %>
        <center>
            <div class="t1">
                <form action="addingSchedule.jsp">
                    <label>Doctor ID</label>
                    <input type="text" name="docId" value="<%=SdocID%> " readonly />
                    <label>Date</label>
                    <input type="date" name="date" />
                    <label>Time</label>
                    <input type="time" name="time" />
                    <label>Number of Patients</label>
                    <input type="number" name="patNum" />
                    <button class="b0">ADD</button> 
                </form>
            </div>
        </center>
    </body>
    <jsp:include page="nav.jsp"/>  
</html>
