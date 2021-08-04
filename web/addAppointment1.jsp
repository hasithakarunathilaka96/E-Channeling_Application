<%@page import="com.util.DoctorValidate"%>
<%@page import="com.util.AppointmentValidate"%>
<%@page import="com.bean.AppointmentBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.bean.DoctorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><title>Health Guard</title>
        <link rel="stylesheet" href="css/adda1.css" type="text/css">
    </head>
    <jsp:include page="menu1.jsp"/> 
    <body style="background-image: url(img/pic15.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                background-attachment: fixed;">
        <div>
    <%            
        try{
           String SdocSpeci = request.getParameter("speci");           
           DoctorBean doctor = new DoctorBean("","",SdocSpeci);
           ResultSet rs2 = DoctorValidate.ValidateNameData(doctor);
        
            if(rs2!=null){
    %>
                <div class="det">
                <div class="tbl">
                <table class="t2">
                    <thead>
                        <tr>
                            <th>DOCTOR NAME</th>
                            <th>SPECIFICATION</th>
                            <th>APPOINTMENT DATE</th>
                            <th>APPOINTMENT TIME</th> 
                            <th>APPOINTMENT NUMBER</th>
                        </tr>
                    </thead>
    <%
                while(rs2.next()){   
                String Sdate = rs2.getString("DATE");
                String SdocId =rs2.getString("DOCTORID"); 
                AppointmentBean appointment = new AppointmentBean(SdocId,Sdate);
                ResultSet rs = AppointmentValidate.ValidateAppointmentNumber(appointment);
                            
                        int appointmentNumber=1;
                        while(rs.next()){
                            appointmentNumber = appointmentNumber + 1;
                        }                       
    %> 
                        <tbody>
                        <tr>
                            <td><%=rs2.getString("NAME") %></td>
                            <td><%=rs2.getString("SPECIALIZATION") %></td>
                            <td><%=rs2.getString("DATE") %></td>
                            <td><%=rs2.getString("TIME") %></td>
                            <td><%= appointmentNumber %></td>                        
                            <td>                                
                                <form method="post" action="appointingDoctor.jsp" > 
                                    <input type="submit" value="Add Appointment"/> 
                                    <input type="hidden" name ="docId" value="<%=rs2.getString("DOCTORID") %>"/> 
                                    <input type="hidden" name ="date" value="<%=rs2.getDate("DATE") %>" />
                                    <input type="hidden" name ="patNIC" value="<%=(String)session.getAttribute("PATNIC") %>" /> 
                                </form>                                
                            </td>
                        </tr>    
    <%
                       } 
                    }            
        }catch(Exception e){
            e.printStackTrace();
        }              
    %>
                       <tbody>
                    </table> 
                </div>
                </div>
        </div>
    </body>
    <jsp:include page="nav.jsp"/> 
</html>
