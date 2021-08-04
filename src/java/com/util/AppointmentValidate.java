package com.util;

import com.bean.AppointmentBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class AppointmentValidate {
    
        public static boolean validateAppointment(AppointmentBean appointment){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("insert into APPOINTMENTDETAILS values(?,?,?,?)");

            ps.setString(1, appointment.getDocId()); 
            ps.setString(2, appointment.getDate()); 
            ps.setString(3, appointment.getPatNIC());
            ps.setInt(4, appointment.getAppointNum());
            
            int i = ps.executeUpdate(); 
            if(i > 0) 
            { 
                return true;
            } 

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }
    
    public static ResultSet ValidateAppointmentNumber(AppointmentBean appointment){

        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select * from APPOINTMENTDETAILS where DOCTORID =? and DATE=?");

            ps.setString(1, appointment.getDocId()); 
            ps.setString(2, appointment.getDate());

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    public static boolean validateAppointmentDelete(AppointmentBean appointment){
         
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("delete from APPOINTMENTDETAILS where DOCTORID=? and DATE=?");

            ps.setString(1, appointment.getDocId());
            ps.setString(2, appointment.getDate());

            int i = ps.executeUpdate(); 
            if(i > 0) 
            { 
                return true;
            } 

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }
    
    public static ResultSet ValidateAppointmentPatient(AppointmentBean appointment){

        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select DOCTORDETAILS.DOCTORID,DOCTORDETAILS.NAME,DOCTORDETAILS.SPECIALIZATION,APPOINTMENTDETAILS.DATE,APPOINTMENTDETAILS.APPOINTMENTNUMBER from DOCTORDETAILS inner join APPOINTMENTDETAILS on DOCTORDETAILS.DOCTORID=APPOINTMENTDETAILS.DOCTORID where PATIENTNIC =?");

            ps.setString(1, appointment.getPatNIC()); 

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    public static ResultSet validateAppointmentDetails(AppointmentBean appointment){

        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select * from APPOINTMENTDETAILS where DOCTORID=?");

            ps.setString(1, appointment.getDocId()); 

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    public static boolean validateAppointmentDelete1(AppointmentBean appointment){
         
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("delete from APPOINTMENTDETAILS where DOCTORID=? and DATE=? and PATIENTNIC=?");

            ps.setString(1, appointment.getDocId());
            ps.setString(2, appointment.getDate());
            ps.setString(3, appointment.getPatNIC());

            int i = ps.executeUpdate(); 
            if(i > 0) 
            { 
                return true;
            } 

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }
    
}
