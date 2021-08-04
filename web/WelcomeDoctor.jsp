<%@page import="com.util.DoctorValidate"%>
<%@page import="com.bean.DoctorBean"%>
<%@page import="com.util.ScheduleValidate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.bean.ScheduleBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><title>Health Guard</title>
        <link rel="stylesheet" href="css/s4.css" type="text/css">
    </head>
    <jsp:include page="menu1.jsp"/>
    <body style="background-image: url(img/pic13.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;">  
        
    <% String SdocID = (String)session.getAttribute("DOCID"); %>       
        <form action="addSchedule.jsp">
            <div class="b4">
            <input type="submit" value="Add schedule">
            </div>
        </form>    
        <form action="RetriveSchedule.jsp">
            <div class="b5">
               <input type="submit" value="My Channeling Schedule">
               </div>
        </form>          
        <div class="welcome">Welcome to HealthGuard</div>      
    <%
        String SdocId = (String)session.getAttribute("DOCID");
        DoctorBean doctor = new DoctorBean(SdocId);
        ResultSet rs1 = DoctorValidate.ValidateRetriveData(doctor);
        
        if(rs1!=null){
    %>  
            <table class="tbl1">    
                <tr id="header"> 

                    <th>DOCTOR ID</th> 
                    <th>NAME</th>
                    <th>PHONE NUMBER</th>
                    <th>SPECIFICATION</th>
                </tr>
    <%
            while(rs1.next()){
    %> 
                <tr>
                    <td><%=rs1.getString("DOCTORID") %></td>
                    <td><%=rs1.getString("NAME") %></td>
                    <td><%=rs1.getString("PHONENUMBER") %></td>
                    <td><%=rs1.getString("SPECIALIZATION") %></td>
                </tr>
    <% 
            }
    %>
            </table> 
        <br>
        <br>
        <br>
    <% 
        }        
    %>
        <form action="updateDoctor.jsp">
            <div class="b3">
                <input type="submit" value="Update Personal Data">
            </div>
        </form>    
    </body>
    <jsp:include page="nav.jsp"/>
</html>
