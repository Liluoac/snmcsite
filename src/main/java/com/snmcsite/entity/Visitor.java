package com.snmcsite.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Visitor {
    private int visitorId;
    private String ip;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss.SSS")
    private Date date;
    private String url;

    @Override
    public String toString(){
        return "Visitor{" +
                "visitorId=" + visitorId +
                ", ip='" + ip + '\'' +
                ", date='" + date + '\'' +
                ", url='" + url + '\'' +
                '}';
    }

    public int getVisitorId() {
        return visitorId;
    }

    public String getIp() {
        return ip;
    }

    public String getUrl() {
        return url;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setVisitorId(int visitorId) {
        this.visitorId = visitorId;
    }
}
