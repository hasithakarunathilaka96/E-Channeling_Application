<%@page import="com.bean.PatientBean"%>
<%@page import="com.util.PatientValidate"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            String SpatNIC = request.getParameter("nic");
            String SpatPassword = request.getParameter("patPassword");
            
            
            PatientBean patient = new PatientBean(SpatNIC,SpatPassword);
            boolean IsValid = PatientValidate.ValidateLoginUser(patient);
            
            if(IsValid){
                session.setAttribute("PATNIC",SpatNIC);
        %>
                <jsp:include page="WelcomePatient.jsp"/>
        <%
            }
            else{
        %>
        <script>
        alert("User Name or Password Incorrect. Please Try Again!");
        </script>
        <jsp:include page="PatientHome.jsp"/>
        <% 
            }
        %>                   
    </body>
</html>
