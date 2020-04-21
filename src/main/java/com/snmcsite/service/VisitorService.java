package com.snmcsite.service;

import com.snmcsite.entity.Visitor;

import java.util.Date;
import java.util.List;

public interface VisitorService {
    void insertVisitor(Visitor visitor);

    List<Visitor> selectAll();

    Visitor getVisitorById(int visitorId);

    List<Visitor> getVisitorByIp(String ip);

    List<Visitor> getVisitorByDate(Date date);

    List<Visitor> getVisitorByUrl(String url);

    List<Visitor> getVisitorByIpAndUrl(String ip,String url);

    int getIpNumberByUrl(String url);
}
