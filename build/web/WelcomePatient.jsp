<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><title>Health Guard</title>
        <link rel="stylesheet" href="css/nw.css" type="text/css">           
    </head>  
    <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic3.png);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;">
        
        <div class="dis">
            <h1>We Take Care Of Your Healthy Health</h1>
        </div>
        <form action="addAppointment.jsp">
            <div class="add">
                <input type="submit" value="Add Appointment">
            </div>
        </form>
        <form action="updatePatient.jsp">
            <div class="edit">
                <input type="submit" value="Update Personal Data">
            </div>
        </form>
        <form action="RetriveAppointment.jsp">
            <div >
                <input type="submit" value="My Appointments">
            </div>
        </form>        
    </body>
     <jsp:include page="nav.jsp"/> 
</html>
