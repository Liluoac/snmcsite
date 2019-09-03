package com.snmcsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Business/")
public class BusinessController {
    @RequestMapping("toBusiness")
    public String toBusiness() {
        return "business";
    }

    @RequestMapping("toChannel")
    public String toChannel() {
        return "business-channel";
    }

    @RequestMapping("toRepair")
    public String toRepair() {
        return "business-repair";
    }

    @RequestMapping("toTrain")
    public String toTrain() {
        return "business-train";
    }

}
