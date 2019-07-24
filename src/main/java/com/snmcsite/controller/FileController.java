package com.snmcsite.controller;

import java.util.ArrayList;

import com.snmcsite.entity.File;
import com.snmcsite.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileController {
    @Autowired
    private FileService FileService;


    @RequestMapping("getFileByType")
    public ModelAndView getFileByType(int typeOne) {
        ModelAndView mv = null;
        mv = new ModelAndView("download");
        switch (typeOne) {

            case 1:
                mv.addObject("title", "设备送修");
                break;
            case 2:
                mv.addObject("title", "工具软件");
                break;
            case 3:
                mv.addObject("title", "其他下载");
                break;
            default:
                mv.addObject("title", "入网材料");
        }
        ArrayList<File> map = FileService.getFileByType(typeOne);
        mv.addObject("map", map);
        return mv;
    }


}
