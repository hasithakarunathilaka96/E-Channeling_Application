package com.util;


import com.bean.DoctorBean;
import com.bean.ScheduleBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ScheduleValidate {
    
    public static boolean ValidateSchedule(ScheduleBean schedule){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("insert into SCHEDULE values(?,?,?,?)");

            ps.setString(1, schedule.getDocId()); 
            ps.setString(2, schedule.getDate()); 
            ps.setString(3, schedule.getTime()); 
            ps.setString(4, schedule.getPatNum());

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
    
    public static ResultSet validateUser(ScheduleBean schedule){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select * from SCHEDULE where DOCTORID =?");

            ps.setString(1, schedule.getDocId());

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    public static boolean validateDate(ScheduleBean schedule){
        boolean bstate = false;
         
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select * from SCHEDULE where DOCTORID =? and DATE=?");

            ps.setString(1, schedule.getDocId());
            ps.setString(2, schedule.getDate());

            ResultSet rs = ps.executeQuery();
            bstate = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return bstate;

    }
    
    public static boolean validateScheduleUpdate(ScheduleBean schedule){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("update SCHEDULE set TIME=?,PATIENTNUMBER =? where DOCTORID =? and DATE =?");

            ps.setString(1, schedule.getTime()); 
            ps.setString(2, schedule.getPatNum()); 
            ps.setString(3, schedule.getDocId()); 
            ps.setString(4, schedule.getDate());
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
    
    public static boolean validateScheduleDelete(ScheduleBean schedule){
        
         
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("delete from SCHEDULE where DOCTORID =? and DATE =?");

            ps.setString(1, schedule.getDocId());
            ps.setString(2, schedule.getDate());

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
    
    public static ResultSet validatePatientNumber(ScheduleBean schedule){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select * from SCHEDULE where DOCTORID =? and DATE =?");

            ps.setString(1, schedule.getDocId());
            ps.setString(2, schedule.getDate());

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    public static ResultSet validateTime(ScheduleBean schedule){
        boolean bstate = false;
         
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select * from SCHEDULE where DOCTORID =? and DATE=?");

            ps.setString(1, schedule.getDocId());
            ps.setString(2, schedule.getDate());

            ResultSet rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    
}
