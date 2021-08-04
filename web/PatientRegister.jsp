<%@page import="com.util.PatientValidate"%>
<%@page import="com.bean.PatientBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
        <%
            String SpatNIC = request.getParameter("patNIC");
            String SpatName = request.getParameter("patName");
            String SpatPhone = request.getParameter("patPhone");
            String SpatPassword = request.getParameter("patPassword");
            String SpatConPassword = request.getParameter("patConPassword");
            
            PatientBean patient1 = new PatientBean(SpatNIC);
            boolean IsValid1 = PatientValidate.ValidateCheckUser(patient1);
                        
                if(IsValid1){
        %>            
                    <script>
                    alert("You are registered user!");
                    </script>
                    <jsp:include page="PatientHome.jsp"/>
        <%
                }
         
                else{
                    if(SpatPassword.equals(SpatConPassword)){
                        PatientBean patient = new PatientBean(SpatNIC,SpatName,SpatPhone,SpatPassword);
                        boolean IsValid = PatientValidate.ValidateRegisterUser(patient);
                        if(IsValid){
        %>
                        <jsp:include page="PatientHome.jsp"/>
        <%
                        }
                        else {
        %>
                        <script>
                        alert("Please Try Again!");
                        </script>
                        <jsp:include page="PatientSignUp.jsp"/>
        <%
                        }
                    }
                    else {
        %>
                        <script>
                        alert("Password Does Not Matched. Please Try Again!");
                        </script>
                        <jsp:include page="PatientSignUp.jsp"/>
        <%
                    }
                }
        %>
    </body>
</html>
