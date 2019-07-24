package com.snmcsite.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Introduction")
public class IntroducitonController {
    @RequestMapping("toIntroduction")
    public String toIntroduction() {
        return "introduction";
    }

    @RequestMapping("toArea")
    public String toArea() {
        return "introduction-area";
    }

    @RequestMapping("toResources")
    public String toResources() {
        return "introduction-resources";
    }

    @RequestMapping("toHonor")
    public String toHonor() {
        return "introduction-honor";
    }

}
