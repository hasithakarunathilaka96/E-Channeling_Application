<%@page import="com.util.DoctorValidate"%>
<%@page import="com.bean.DoctorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <title>Health Guard</title>
    <body>
        <%
            String SdocId = request.getParameter("docId");
            String SdocName = request.getParameter("docName");
            String SdocPassword = request.getParameter("docPassword");
            String SdocPhone = request.getParameter("docPhone");
            String SdocSpeci = request.getParameter("docSpeci");
            String SdocConPassword = request.getParameter("docConPassword");
            
            DoctorBean doctor1 = new DoctorBean(SdocId);
            boolean IsValid1 = DoctorValidate.ValidateCheckUser(doctor1);
                        
                if(IsValid1){
        %>            
                     <%="You are registered user!"%>
                    <br/>
                    <jsp:include page="DoctorHome.jsp"/>
        <%
                }
         
                else{
                    if(SdocPassword.equals(SdocConPassword)){
                        DoctorBean doctor = new DoctorBean(SdocId,SdocName,SdocPhone,SdocSpeci,SdocPassword);
                        boolean IsValid = DoctorValidate.ValidateRegisterUser(doctor);
                        
                        if(IsValid){
        %>
                        <jsp:include page="DoctorHome.jsp"/>
        <%
                        }
                        else {
        %>
                        <script>
                        alert("Please Try Again!");
                        </script>
                        <jsp:include page="DoctorSignUp.jsp"/>
        <%
                        }
                    }    
                    else {
        %>
                <script>
                alert("Password Does Not Matched. Please Try Again!");
                </script>
                <jsp:include page="DoctorSignUp.jsp"/>
        <%
                    }
                }
        %>  
    </body>
</html>
