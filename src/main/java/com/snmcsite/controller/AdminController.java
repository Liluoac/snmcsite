package com.snmcsite.controller;

import com.snmcsite.entity.News;
import com.snmcsite.entity.User;
import com.snmcsite.entity.File;

import com.snmcsite.service.FileService;
import com.snmcsite.service.NewsService;
import com.snmcsite.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("admin")
public class AdminController {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private NewsService newsService;
    @Autowired
    private FileService fileService;
    @Autowired
    private UserService userService;
    private Logger logger = LoggerFactory.getLogger(AdminController.class);

    @RequestMapping("toAdmin")
    public String toAdmin() {
        return "administrator/index";
    }

    @RequestMapping("toLogin")
    public String toLogin() {
        return "administrator/login";
    }

    @RequestMapping("toInfo")
    public String toInfo() {
        return "administrator/info";
    }

    @RequestMapping("toNews")
    public ModelAndView toNews() {
        ModelAndView mv=new ModelAndView("administrator/news");

        List<News> map = newsService.selectAll();


        mv.addObject("map", map);
        return mv;
    }

    @RequestMapping("toRegister")
    public String toRegister() {
        return "administrator/register";
    }

    @RequestMapping("toFile")
    public ModelAndView toFile() {
        ModelAndView mv=new ModelAndView("administrator/file");

        List<File> map = fileService.selectAll();

        mv.addObject("map", map);
        return mv;
    }

    @PostMapping("doRegister")
    public String doRegister(User user, RedirectAttributes redirectAttributes) {
        User userNow = (User) request.getSession().getAttribute("user");
        //只有admin才有权限执行添加新用户操作
        if (!"admin".equals(userNow.getAccount())) {
            redirectAttributes.addFlashAttribute("message", "权限不够");
        } else {
            userService.insertUser(user);
            redirectAttributes.addFlashAttribute("message", "添加用户成功");
            logger.info(userNow.getAccount() + "添加了新用户"+"，用户名为："+user.getAccount());
        }
        return "redirect:toRegister";
    }

    @RequestMapping("doLogout")
    public String doLogout(RedirectAttributes redirectAttributes){
        HttpSession session = request.getSession(false);

        session.invalidate();

        redirectAttributes.addFlashAttribute("message", "注销成功");
        return "redirect:toLogin";
    }

    @RequestMapping("doDeleteNews")
    public String doDeleteNews(int newsId){
        newsService.deleteNewsById(newsId);
        return "redirect:toNews";
    }

    @RequestMapping("doDeleteFile")
    public String doDeleteFile(int fileId){
        fileService.deleteFileById(fileId);
        return "redirect:toFile";
    }

    @RequestMapping("toUpfile")
    public String toUpfile(){ return "administrator/fileUpload";}
}
