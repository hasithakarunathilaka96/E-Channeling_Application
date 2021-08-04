<%@page import="com.util.DoctorValidate"%>
<%@page import="com.bean.DoctorBean"%>
<html>
    <body>
    <% 
        String SdocId = request.getParameter("docId");
        String SdocName = request.getParameter("docName");
        String SdocPassword = request.getParameter("docPassword");
        String SdocPhone = request.getParameter("docPhone");
        String SdocSpeci = request.getParameter("docSpeci");
        String SdocConPassword = request.getParameter("docConPassword");

        if(SdocPassword.equals(SdocConPassword)){
            DoctorBean doctor = new DoctorBean(SdocId,SdocName,SdocPhone,SdocSpeci,SdocPassword);
            boolean IsValid = DoctorValidate.ValidateUpdateUser(doctor);

            if(IsValid){   
    %>
                <script>
                    alert("You are Successfully updated your personal data!");
                </script>
                <jsp:include page="WelcomeDoctor.jsp"/>
    <% 
            }
            else{
    %>
                <script>
                    alert("Please Try Again!");
                </script>
                <jsp:include page="WelcomeDoctor.jsp"/>
    <% 
            }
        }   
        else {
    %>
            <script>
                alert("Password Does Not Matched. Please Try Again!");
            </script>
            <jsp:include page="WelcomeDoctor.jsp"/>
    <%
        }
    %> 
    </body>
</html>
