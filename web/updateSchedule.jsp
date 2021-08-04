<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Guard Doctor Home</title>
        <link rel="stylesheet" href="css/logn.css">
    </head>
    <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic19.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed">
     
    <% 
        String SdocId = request.getParameter("docId");
        String Sdate = request.getParameter("date");
    %>       
        <div class="center">
             <h1>Update Schedule</h1>  
        <form action="updatingSchedule.jsp">
             <div class="txt_field">
                <input type="text" name="docId" value="<%=SdocId %>" readonly>
                <span></span>
                <label>
                </label>
            </div>
            <div class="txt_field">
                <input type="text" name="date" value="<%=Sdate %>" readonly>
                <span></span>
                <label>
                </label>
            </div>
            <div class="txt_field">
                <input type="time" name="time" required>
                <span></span>
                <label>Time</label>
            </div>
            <div class="txt_field">
                <input type="number" name="patNum" required>
                <span></span>
                <label>Number of patients</label>
            </div>
            <input type="submit" value="Save">
        </form>
        </div>       
    </body>
    <jsp:include page="nav.jsp"/>
</html>
