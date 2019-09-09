package com.snmcsite.controller;

import com.snmcsite.entity.Flow;
import com.snmcsite.service.FileService;
import com.snmcsite.service.FlowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Business/")
public class BusinessController {
    @Autowired
    FlowService flowService;

    @RequestMapping("toBusiness")
    public ModelAndView toBusiness(int flowId) {
        ModelAndView mv= new ModelAndView("business");
        Flow flow=flowService.getFlowById(flowId);
        mv.addObject("flow",flow);
        return mv;
    }

}
