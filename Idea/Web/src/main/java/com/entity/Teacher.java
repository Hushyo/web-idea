package com.entity;

public class Teacher {
    private int tid;
    private String tname;
    private String tintroduction;
    private String timg;

    public Teacher() {
    }

    public Teacher(int tid, String tname, String timg) {
        this.tid = tid;
        this.tname = tname;
        this.timg = timg;
    }

    public Teacher(int tid) {
        this.tid = tid;
    }

    public Teacher(int tid, String tname) {
        this.tid = tid;
        this.tname = tname;
    }

    public Teacher(int tid, String tname, String tintroduction, String timg) {
        this.tid = tid;
        this.tname = tname;
        this.tintroduction = tintroduction;
        this.timg = timg;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTintroduction() {
        return tintroduction;
    }

    public void setTintroduction(String tintroduction) {
        this.tintroduction = tintroduction;
    }

    public String getTimg() {
        return timg;
    }

    public void setTimg(String timg) {
        this.timg = timg;
    }
}
