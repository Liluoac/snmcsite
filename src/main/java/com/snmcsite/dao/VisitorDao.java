package com.snmcsite.dao;

import com.snmcsite.entity.Visitor;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface VisitorDao {

    void insertVisitor(@Param("visitor")Visitor visitor);

    List<Visitor> selectAll();

    Visitor getVisitorById(int visitorId);

    List<Visitor> getVisitorByIp(String ip);

    List<Visitor> getVisitorByDate(Date date);

    List<Visitor> getVisitorByUrl(String url);

    List<Visitor> getVisitorByIpAndUrl(@Param("ip") String ip,@Param("url") String url);

    int getIpNumberByUrl(String url);
}
