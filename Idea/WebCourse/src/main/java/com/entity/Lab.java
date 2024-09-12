package com.entity;

import java.time.LocalDateTime;

public class Lab {
    private int lid;
    private String lname;
    private String lintroduction;
    private LocalDateTime editTime;
    private String limg;


    public Lab() {}

    public Lab(int lid, String lname, String lintroduction, LocalDateTime editTime,String limg) {
        this.lid = lid;
        this.lname = lname;
        this.lintroduction = lintroduction;
        this.editTime = editTime;
        this.limg = limg;
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getLintroduction() {
        return lintroduction;
    }

    public void setLintroduction(String lintroduction) {
        this.lintroduction = lintroduction;
    }

    public LocalDateTime getEditTime() {
        return editTime;
    }

    public void setEditTime(LocalDateTime editTime) {
        this.editTime = editTime;
    }

    public String getLimg() {
        return limg;
    }

    public void setLimg(String limg) {
        this.limg = limg;
    }
}
