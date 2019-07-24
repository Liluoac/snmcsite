package com.snmcsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Sn")
public class SnController {
    @RequestMapping("toSn")
    public String toSn() {
        return "sn";
    }

    @RequestMapping("toManager")
    public String toManager() {
        return "sn-manager";
    }

    @RequestMapping("toPlan")
    public String toPlan() {
        return "sn-plan";
    }

}
