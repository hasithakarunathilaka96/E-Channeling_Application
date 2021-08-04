<%@page import="com.util.AppointmentValidate"%>
<%@page import="com.bean.AppointmentBean"%>
<%@page import="com.util.DoctorValidate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.bean.DoctorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><title>Health Guard</title>
        <link rel="stylesheet" href="css/adda.css" type="text/css">
    </head>
     <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic7.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;"> 
        
        <div class="addap">
            <form action="addAppointment1.jsp">
                <select name="speci" class="category">
    <% 
                        ResultSet rs1 = DoctorValidate.ValidateSpecializationData();
                        while(rs1.next()){
                            String speci=rs1.getString(1);
    %>
                    <option><%=speci%></option>
    <% 
                        }
    %>
                </select>&emsp;&emsp;
                <button>Search</button>
            </form>            
        </div>
        <div class="dis">
            Total Health Care Solutions
        </div>
    </body>
    <jsp:include page="nav.jsp"/> 
</html>
