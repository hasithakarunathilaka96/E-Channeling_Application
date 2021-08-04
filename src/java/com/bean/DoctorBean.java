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
public class DoctorBean {
    String docId;
    String docName;
    String docPhone;
    String docSpeci;
    String docPassword;

    public DoctorBean(String docId) {
        this.docId = docId;
    }

    public DoctorBean(String docId, String docName, String docSpeci) {
        this.docId = docId;
        this.docName = docName;
        this.docSpeci = docSpeci;
    }

    

    public DoctorBean(String docId, String docPassword) {
        this.docId = docId;
        this.docPassword = docPassword;
    }

    public DoctorBean(String docId, String docName, String docPhone, String docSpeci, String docPassword) {
        this.docId = docId;
        this.docName = docName;
        this.docPhone = docPhone;
        this.docSpeci = docSpeci;
        this.docPassword = docPassword;
    }

    public String getDocId() {
        return docId;
    }

    public void setDocId(String docId) {
        this.docId = docId;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getDocPhone() {
        return docPhone;
    }

    public void setDocPhone(String docPhone) {
        this.docPhone = docPhone;
    }

    public String getDocSpeci() {
        return docSpeci;
    }

    public void setDocSpeci(String docSpeci) {
        this.docSpeci = docSpeci;
    }

    public String getDocPassword() {
        return docPassword;
    }

    public void setDocPassword(String docPassword) {
        this.docPassword = docPassword;
    }
    
}
    

