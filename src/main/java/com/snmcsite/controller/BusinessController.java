package com.snmcsite.controller;

import com.snmcsite.entity.Flow;
import com.snmcsite.entity.Visitor;
import com.snmcsite.service.FileService;
import com.snmcsite.service.FlowService;
import com.snmcsite.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

@Controller
@RequestMapping("/Business/")
public class BusinessController {
    @Autowired
    FlowService flowService;

    @Autowired
    VisitorService visitorService;

    @RequestMapping("toBusiness")
    public ModelAndView toBusiness(int flowId,String ip) {
        ModelAndView mv= new ModelAndView("business");
        Flow flow=flowService.getFlowById(flowId);
        mv.addObject("flow",flow);
        Date date = new Date();
        String url="flowId="+flowId;
        Visitor visitor = new Visitor();
        visitor.setDate(date);
        visitor.setIp(ip);
        visitor.setUrl(url);
        visitorService.insertVisitor(visitor);

        int visitors = visitorService.getIpNumberByUrl(url);
        mv.addObject("visitors",visitors);

        return mv;
    }

}
