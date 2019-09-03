package com.snmcsite.controller;

import java.util.List;

import com.snmcsite.entity.File;
import com.snmcsite.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class FileController {
    @Autowired
    private FileService FileService;


    @RequestMapping("getFileByType")
    public ModelAndView getFileByType(int typeOne,int page) {
        ModelAndView mv = null;
        mv = new ModelAndView("download");
        switch (typeOne) {

            case 1:
                mv.addObject("title", "入网材料");
                break;
            case 2:
                mv.addObject("title", "设备送修");
                break;
            case 3:
                mv.addObject("title", "工具软件");
                break;
            default:
                mv.addObject("title", "其他下载");
        }
        List<File> map = FileService.getFileByType(typeOne);
        int totalFile = map.size();
        int totalPage = totalFile%10>0?totalFile/10+1:totalFile/10;

        mv.addObject("curPage",1);
        mv.addObject("prePage",page-1>0?page-1:1);
        mv.addObject("nextPage",page<totalPage?page+1:page);
        mv.addObject("lastPage",totalPage);
        mv.addObject("page",page);
        mv.addObject("type",typeOne);

        int first=(page-1)*10;
        int last=page*10>totalFile?totalFile:page*10-1;
        List<File> newMap=map.subList(first,last);

        mv.addObject("map", newMap);

        return mv;
    }


}
