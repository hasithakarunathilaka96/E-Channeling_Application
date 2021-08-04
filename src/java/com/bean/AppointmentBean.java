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
public class AppointmentBean {
    String docId;
    String date;
    String patNIC;
    int appointNum;

    public AppointmentBean(String docId, String date, String patNIC, int appointNum) {
        this.docId = docId;
        this.date = date;
        this.patNIC = patNIC;
        this.appointNum = appointNum;
    }

    public int getAppointNum() {
        return appointNum;
    }

    public void setAppointNum(int appointNum) {
        this.appointNum = appointNum;
    }

    public AppointmentBean(String patNIC) {
        this.patNIC = patNIC;
    }

    public AppointmentBean(String docId, String date) {
        this.docId = docId;
        this.date = date;
    }

    public AppointmentBean(String docId, String date, String patNIC) {
        this.docId = docId;
        this.date = date;
        this.patNIC = patNIC;
    }

    public String getDocId() {
        return docId;
    }

    public void setDocId(String docId) {
        this.docId = docId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPatNIC() {
        return patNIC;
    }

    public void setPatNIC(String patNIC) {
        this.patNIC = patNIC;
    }
    
}
