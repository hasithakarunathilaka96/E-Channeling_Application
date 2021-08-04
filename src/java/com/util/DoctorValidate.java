package com.util;

import com.bean.DoctorBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class DoctorValidate {
    
    public static boolean ValidateRegisterUser(DoctorBean doctor){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("insert into DOCTORDETAILS values(?,?,?,?,?)");

            ps.setString(1, doctor.getDocId()); 
            ps.setString(2, doctor.getDocName()); 
            ps.setString(3, doctor.getDocPhone()); 
            ps.setString(4, doctor.getDocSpeci());  
            ps.setString(5, doctor.getDocPassword());

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
    
    public static boolean ValidateLoginUser(DoctorBean doctor){
        boolean bstate = false;
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");
            
            PreparedStatement ps =  con.prepareStatement("select * from DOCTORDETAILS where DOCTORID =? and PASSWORD = ?");
            
            ps.setString(1, doctor.getDocId());
            ps.setString(2, doctor.getDocPassword());
 
            ResultSet rs = ps.executeQuery();
            bstate = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return bstate;

    }
    
    public static boolean ValidateCheckUser(DoctorBean doctor){
        boolean bstate = false;
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");
            
            PreparedStatement ps =  con.prepareStatement("select * from DOCTORDETAILS where DOCTORID =?");
            
            ps.setString(1, doctor.getDocId());
 
            ResultSet rs = ps.executeQuery();
            bstate = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return bstate;

    }
    
    public static ResultSet ValidateRetriveData(DoctorBean doctor){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select * from DOCTORDETAILS where DOCTORID =?");

            ps.setString(1, doctor.getDocId());

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    public static boolean ValidateUpdateUser(DoctorBean doctor){
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");
            
            PreparedStatement ps =  con.prepareStatement("update DOCTORDETAILS set NAME=?,PHONENUMBER =?,SPECIALIZATION=?,PASSWORD=? where DOCTORID=?");
            
            ps.setString(1, doctor.getDocName());
            ps.setString(2, doctor.getDocPhone());
            ps.setString(3, doctor.getDocSpeci());
            ps.setString(4, doctor.getDocPassword());
            ps.setString(5, doctor.getDocId());
 
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
    
    public static ResultSet ValidateSpecializationData(){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select distinct SPECIALIZATION from DOCTORDETAILS");

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
    public static ResultSet ValidateNameData(DoctorBean doctor){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("select DOCTORDETAILS.DOCTORID,DOCTORDETAILS.NAME,DOCTORDETAILS.SPECIALIZATION,SCHEDULE.DATE,SCHEDULE.TIME from DOCTORDETAILS inner join SCHEDULE on DOCTORDETAILS.DOCTORID=SCHEDULE.DOCTORID where SPECIALIZATION =?");

            ps.setString(1, doctor.getDocSpeci());

            ResultSet rs = ps.executeQuery();
            return rs;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    
}
