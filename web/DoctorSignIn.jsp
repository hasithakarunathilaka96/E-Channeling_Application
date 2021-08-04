<%@page import="com.bean.DoctorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import= "com.util.DoctorValidate" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Health Guard</title>
        <link rel="stylesheet" href="css/log.css" type="text/css">
    </head>
    <body>
        <%
            String SdocID = request.getParameter("doctorId");
            String SdocPassword = request.getParameter("docPassword");
            
            DoctorBean doctor = new DoctorBean(SdocID,SdocPassword);
            boolean IsValid = DoctorValidate.ValidateLoginUser(doctor);
            
            if(IsValid){
                session.setAttribute("DOCID",SdocID);
        %>
                <jsp:include page="WelcomeDoctor.jsp"/>
        <%
            }
            else{
        %>
        <script>
        alert("User Name or Password Incorrect. Please Try Again!");
        </script>
        <jsp:include page="DoctorHome.jsp"/>
        <% 
            }
        %>             
    </body>
</html>
