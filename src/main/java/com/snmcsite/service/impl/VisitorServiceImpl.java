package com.snmcsite.service.impl;

import com.snmcsite.dao.VisitorDao;
import com.snmcsite.entity.Visitor;
import com.snmcsite.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class VisitorServiceImpl implements VisitorService {
    @Autowired
    private VisitorDao visitorDao;

    @Override
    public void insertVisitor(Visitor visitor){
        visitorDao.insertVisitor(visitor);
    }

    @Override
    public List<Visitor> selectAll(){
        return visitorDao.selectAll();
    }

    @Override
    public Visitor getVisitorById(int visitorId){
        return visitorDao.getVisitorById(visitorId);
    }

    @Override
    public List<Visitor> getVisitorByIp(String ip){
        return visitorDao.getVisitorByIp(ip);
    }

    @Override
    public List<Visitor> getVisitorByDate(Date date){
        return visitorDao.getVisitorByDate(date);
    }

    @Override
    public List<Visitor> getVisitorByUrl(String url){
        return visitorDao.getVisitorByUrl(url);
    }

    @Override
    public List<Visitor> getVisitorByIpAndUrl(String ip,String url){
        return visitorDao.getVisitorByIpAndUrl(ip,url);
    }

    @Override
    public int getIpNumberByUrl(String url){
        return visitorDao.getIpNumberByUrl(url);
    }
}
