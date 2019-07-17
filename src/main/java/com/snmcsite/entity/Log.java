package com.snmcsite.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Log {
    private int logId;
    private String user;
    private String author;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date time;
    private String action;
    private String content;
    private String obj;
    private int result;

    @Override
    public String toString() {
        return "Log{" +
                "logId=" + logId +
                ", user='" + user + '\'' +
                ", author='" + author + '\'' +
                ", time=" + time +
                ", action='" + action + '\'' +
                ", content='" + content + '\'' +
                ", obj='" + obj + '\'' +
                ", result=" + result +
                '}';
    }

    public int getLogId() {
        return logId;
    }

    public void setLogId(int logId) {
        this.logId = logId;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getObj() {
        return obj;
    }

    public void setObj(String obj) {
        this.obj = obj;
    }

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }
}
