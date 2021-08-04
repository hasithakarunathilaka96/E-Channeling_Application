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
public class ScheduleBean {
    String docId;
    String date;
    String time;
    String patNum;   

    public ScheduleBean(String docId) {
        this.docId = docId;
    }

    public ScheduleBean(String docId, String date) {
        this.docId = docId;
        this.date = date;
    }

    public ScheduleBean(String docId, String date, String time, String patNum) {
        this.docId = docId;
        this.date = date;
        this.time = time;
        this.patNum = patNum;
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPatNum() {
        return patNum;
    }

    public void setPatNum(String patNum) {
        this.patNum = patNum;
    }
}
