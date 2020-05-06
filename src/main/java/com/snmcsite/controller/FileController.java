package com.snmcsite.controller;

import java.util.Date;
import java.util.List;

import com.snmcsite.entity.File;
import com.snmcsite.entity.Visitor;
import com.snmcsite.service.FileService;
import com.snmcsite.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class FileController {
    @Autowired
    private FileService fileService;

    @Autowired
    private VisitorService visitorService;

    @RequestMapping("getFileByType")
    public ModelAndView getFileByType(int typeOne,int page) {
        ModelAndView mv = null;
        mv = new ModelAndView("download");
        switch (typeOne) {

            case 1:
                mv.addObject("title", "入网申请材料");
                break;
            case 2:
                mv.addObject("title", "设备送修材料");
                break;
            case 3:
                mv.addObject("title", "信道申请材料");
                break;
            default:
                mv.addObject("title", "其他下载");
        }
        List<File> map = fileService.getFileByType(typeOne);
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

    @RequestMapping("downloadFile")
    public String downloadFile(int fileId,String ip,int typeOne,int page){

        Visitor visitor = new Visitor();
        visitor.setDate(new Date());
        String url = "fileId=" + fileId;
        visitor.setUrl(url);
        visitor.setIp(ip);
        visitorService.insertVisitor(visitor);

        fileService.addVisitor(fileId);

        String ans = "redirect:/getFileByType?&typeOne="+typeOne+"&page="+page;
        System.out.println(ans);
        return ans;
    }
}
