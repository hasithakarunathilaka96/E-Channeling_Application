<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Guard</title>
        <link rel="stylesheet" href="css/logn.css">
    </head>
    <jsp:include page="menu.jsp"/>
    <body style="background-image: url(img/pic19.jpg);
          background-repeat: no-repeat;
          background-size: 100% 100%;
          background-attachment: fixed">
        <div class="center">
            <h1>Sign In</h1>  
            <form action="DoctorSignIn.jsp">
                <div class="txt_field">
                    <input type="text" name="doctorId" required>
                    <span></span>
                    <label>Doctor ID</label>
                </div>
                <div class="txt_field">
                    <input type="password" name="docPassword" required>
                    <span></span>
                    <label>Password</label>
                </div>
                <input type="submit" value="Sign In">
                <div class="signup_link">
                    Not a member? <a href="DoctorSignUp.jsp">Signup</a>
                </div>
            </form>
        </div>
    </body>
    <jsp:include page="nav.jsp"/>
</html>
