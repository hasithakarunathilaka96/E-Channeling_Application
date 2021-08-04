<%@page import="com.util.PatientValidate"%>
<%@page import="com.bean.PatientBean"%>
<html>
    <body>
    <% 
        String SpatNIC = request.getParameter("patNIC");
        String SpatName = request.getParameter("patName");
        String SpatPhone = request.getParameter("patPhone");
        String SpatPassword = request.getParameter("patPassword");
        String SpatConPassword = request.getParameter("patConPassword");

        if(SpatPassword.equals(SpatConPassword)){
            PatientBean patient = new PatientBean(SpatNIC,SpatName,SpatPhone,SpatPassword);
            boolean IsValid = PatientValidate.ValidateUpdateUser(patient);

            if(IsValid){   
    %>
                <script>
                    alert("You are Successfully updated your personal data!");
                </script>
                <jsp:include page="WelcomePatient.jsp"/>
    <% 
            }
            else{
    %>
                <script>
                    alert("Please Try Again!");
                </script>
                <jsp:include page="WelcomePatient.jsp"/>
    <% 
            }
        }   
        else {
    %>
            <script>
            alert("Password Does Not Matched. Please Try Again!");
            </script>
            <jsp:include page="WelcomePatient.jsp"/>
    <%
        }
    %> 
    </body>
</html>
