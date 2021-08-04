/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

/**
 *
 * @author User
 */
public class PatientBean {
    String patNIC;
    String patName;
    String patPhone;
    String patPassword;

    public PatientBean(String patNIC) {
        this.patNIC = patNIC;
    }

    public PatientBean(String patNIC, String patPassword) {
        this.patNIC = patNIC;
        this.patPassword = patPassword;
    }

    public PatientBean(String patNIC, String patName, String patPhone, String patPassword) {
        this.patNIC = patNIC;
        this.patName = patName;
        this.patPhone = patPhone;
        this.patPassword = patPassword;
    }

    public String getPatNIC() {
        return patNIC;
    }

    public void setPatNIC(String patNIC) {
        this.patNIC = patNIC;
    }

    public String getPatName() {
        return patName;
    }

    public void setPatName(String patName) {
        this.patName = patName;
    }

    public String getPatPhone() {
        return patPhone;
    }

    public void setPatPhone(String patPhone) {
        this.patPhone = patPhone;
    }

    public String getPatPassword() {
        return patPassword;
    }

    public void setPatPassword(String patPassword) {
        this.patPassword = patPassword;
    }

    
}
