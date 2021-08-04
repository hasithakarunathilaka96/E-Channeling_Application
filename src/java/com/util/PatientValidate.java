package com.util;

import com.bean.PatientBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class PatientValidate {
    
    public static boolean ValidateRegisterUser(PatientBean patient){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");

            PreparedStatement ps =  con.prepareStatement("insert into PATIENTDETAILS values(?,?,?,?)");

            ps.setString(1, patient.getPatNIC()); 
            ps.setString(2, patient.getPatName()); 
            ps.setString(3, patient.getPatPhone());  
            ps.setString(4, patient.getPatPassword());

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
    
    public static boolean ValidateLoginUser(PatientBean patient){
        boolean bstate = false;
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");
            
            PreparedStatement ps =  con.prepareStatement("select * from PATIENTDETAILS where PATIENTNIC =? and PASSWORD = ?");
            
            ps.setString(1, patient.getPatNIC());
            ps.setString(2, patient.getPatPassword());
 
            ResultSet rs = ps.executeQuery();
            bstate = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return bstate;

    }
    
    public static boolean ValidateCheckUser(PatientBean patient){
        boolean bstate = false;
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");
            
            PreparedStatement ps =  con.prepareStatement("select * from PATIENTDETAILS where PATIENTNIC =? ");
            
            ps.setString(1, patient.getPatNIC());
 
            ResultSet rs = ps.executeQuery();
            bstate = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return bstate;

    }
    
    public static boolean ValidateUpdateUser(PatientBean patient){
        
        try {
            //loading driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            //creating connection string
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Health_Guard","app","app");
            
            PreparedStatement ps =  con.prepareStatement("update PATIENTDETAILS set NAME=?,PHONENUMBER =?,PASSWORD=? where PATIENTNIC=?");
            
            ps.setString(1, patient.getPatName());
            ps.setString(2, patient.getPatPhone());
            ps.setString(3, patient.getPatPassword());
            ps.setString(4, patient.getPatNIC());
 
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
