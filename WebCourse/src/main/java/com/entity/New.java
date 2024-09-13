package com.entity;

import java.time.LocalDateTime;

public class New {
    private int id;
    private LocalDateTime publishTime;
    private String title;
    private String content;
    private int year;
    private int month;
    private int day;

    public int getYear() {
        return publishTime.getYear();
    }

    public int getMonth() {
        return publishTime.getMonthValue();
    }

    public int getDay() {
        return publishTime.getDayOfMonth();
    }

    public New(){}

    public New(LocalDateTime publishTime, String title, String context) {
        this.publishTime = publishTime;
        this.title = title;
        this.content = context;
    }
    public New(int id, LocalDateTime publishTime, String title, String content) {
        this.id = id;
        this.publishTime = publishTime;
        this.title = title;
        this.content = content;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public LocalDateTime getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(LocalDateTime publishTime) {
        this.publishTime = publishTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContext(String context) {
        this.content = context;
    }
}
