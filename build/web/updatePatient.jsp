<%-- 
    Document   : updatePatient
    Created on : Jun 1, 2021, 10:14:13 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Guard</title>
        <link rel="stylesheet" href="css/regi.css" type="text/css">
    </head>
    <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic15.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed">
               
        <div class="center">
            <h1>Update Your Details</h1>  
        <form method="post" action="updatingPatient.jsp"> 
            <div class="txt_field">
                <input type="text" name="patNIC"  value="<%= (String)session.getAttribute("PATNIC") %>" readonly>
                <span></span>
                <label>
                </label>
            </div>
            <div class="txt_field">
                <input type="text" name="patName" required>
                <span></span>
                <label>Name</label>
            </div>
            <div class="txt_field">
                <input type="text" name="patPhone" required>
                <span></span>
                <label>Phone Number</label>
            </div>
            <div class="txt_field">
                <input type="password" name="patPassword" required>
                <span></span>
                <label>Password</label>
            </div>
            <div class="txt_field">
                <input type="password" name="patConPassword" required>
                <span></span>
                <label>Confirm Password</label>
            </div>
            <input type="submit" value="Save">
        </form>
        </div>
        <div class="e">
            <h1>HealthGuard Best Care</h1>
            <h2>Your health is our top priority and concern</h2>
        </div>      
    </body>
    <jsp:include page="nav.jsp"/> 
</html>
