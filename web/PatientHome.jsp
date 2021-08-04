<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Health Guard</title>
        <link rel="stylesheet" href="css/regi.css" type="text/css">
    </head>
    <jsp:include page="menu.jsp"/>
    <body style="background-image: url(img/pic15.jpg);
          background-repeat: no-repeat;
          background-size: 100% 100%;
          background-attachment: fixed">

        <div class="center">
            <h1>Sign In</h1>  
            <form action="PatientSignIn.jsp">
                <div class="txt_field">
                    <input type="text" name="nic" required>
                    <span></span>
                    <label>Your NIC</label>
                </div>
                <div class="txt_field">
                    <input type="password" name="patPassword" required>
                    <span></span>
                    <label>Password</label>
                </div>
                <input type="submit" value="Sign In">
                <div class="signup_link">
                    Not a member? <a href="PatientSignUp.jsp">Signup</a>
                </div>
            </form>   
        </div>   
        <div class="e">
            <h1>HealthGuard Best Care</h1>
            <h2>Your health is our top priority and concern</h2>
        </div>
    </body>
    <jsp:include page="nav.jsp"/>
</html>
