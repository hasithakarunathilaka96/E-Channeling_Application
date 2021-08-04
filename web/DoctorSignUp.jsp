<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Guard</title>
        <link rel="stylesheet" href="css/regn.css" type="text/css">
    </head>
    <jsp:include page="menu.jsp"/>
    <body style="background-image: url(img/pic16.jpg);
          background-repeat: no-repeat;
          background-size: 100% 100%;
          background-attachment: fixed">

        <div class="center">
            <h1>Sign Up</h1>  
            <form method="post" action="DoctorRegister.jsp"> 
                <div class="txt_field">
                    <input type="text" name="docId"  required>
                    <span></span>
                    <label>Doctor ID</label>
                </div>
                <div class="txt_field">
                    <input type="text" name="docName" required>
                    <span></span>
                    <label>Name</label>
                </div>
                <div class="txt_field">
                    <input type="text" name="docPhone" required>
                    <span></span>
                    <label>Phone Number</label>
                </div>
                <div class="txt_field">
                    <input type="text" name="docSpeci" required>
                    <span></span>
                    <label>Specialization</label>
                </div>
                <div class="txt_field">
                    <input type="password" name="docPassword" required>
                    <span></span>
                    <label>Password</label>
                </div>
                <div class="txt_field">
                    <input type="password" name="docConPassword" required>
                    <span></span>
                    <label>Confirm Password</label>
                </div>
                <input type="submit" value="Sign Up">
            </form>
        </div>
    </body>
    <jsp:include page="nav.jsp"/>    
</html>
