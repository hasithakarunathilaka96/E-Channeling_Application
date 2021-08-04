<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <title>Health Guard</title>
        <link rel="stylesheet" href="css/h3.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">      
    </head>
    
    <body>
        <div class="menu-bar">
            <ul>
                <div class="logo"><a><img src="img/logo.png" alt=""></a></div>
                <li class="active"><a href="Home.jsp">Home</a></li>
                <li><a href="About.jsp">About Us</a></li>
                <li><a href="Services.jsp">Services</a></li>
                <li><a href="#">Sign In</a>
                    <div class="sub-menu-1">
                        <ul>
                            <li><a href="DoctorHome.jsp">As Doctor</a></li>
                            <li><a href="PatientHome.jsp">As Patient</a></li>
                        </ul>
                    </div>
                </li>

                <li><a href="#">Sign Up</a>
                <div class="sub-menu-1">
                        <ul>
                            <li><a href="DoctorSignUp.jsp">As Doctor</a></li>
                            <li><a href="PatientSignUp.jsp">As Patient</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </body>
</html>
