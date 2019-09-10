package com.snmcsite.controller;

import com.snmcsite.entity.Flow;
import com.snmcsite.entity.News;
import com.snmcsite.entity.User;
import com.snmcsite.entity.File;

import com.snmcsite.service.FileService;
import com.snmcsite.service.FlowService;
import com.snmcsite.service.NewsService;
import com.snmcsite.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminController {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private NewsService newsService;
    @Autowired
    private FileService fileService;
    @Autowired
    private UserService userService;
    @Autowired
    private FlowService flowService;
    private Logger logger = LoggerFactory.getLogger(AdminController.class);

    @RequestMapping("toAdmin")
    public String toAdmin() {
        return "administrator/index";
    }

    @RequestMapping("toLogin")
    public String toLogin() {
        return "administrator/login";
    }

    @RequestMapping("doLogout")
    public String doLogout(RedirectAttributes redirectAttributes){
        HttpSession session = request.getSession(false);

        session.invalidate();

        redirectAttributes.addFlashAttribute("message", "注销成功");
        return "redirect:toLogin";
    }

    @RequestMapping("toNews")
    public ModelAndView toNews() {
        ModelAndView mv=new ModelAndView("administrator/news");

        List<News> map = newsService.getNews();

        mv.addObject("map", map);
        return mv;
    }

    @RequestMapping("toNewsAdd")
    public String toNewsAdd() {
        return "administrator/newsAdd";
    }

    @RequestMapping("toNewsEdit")
    public ModelAndView toNewsEdit(int newsId) {

        ModelAndView mv=new ModelAndView ("administrator/newsEdit");
        News news=newsService.getNewsById(newsId);
        SimpleDateFormat smp=new SimpleDateFormat("yyyy-MM-dd");
        mv.addObject("news",news);
        return mv;
    }

    @RequestMapping("doNewsDelete")
    public String doDeleteNews(int newsId){
        newsService.deleteNewsById(newsId);
        return "redirect:toNews";
    }

    @RequestMapping("toNotice")
    public ModelAndView toNotice() {
        ModelAndView mv=new ModelAndView("administrator/notice");

        List<News> map = newsService.getNotice();


        mv.addObject("map", map);
        return mv;
    }

    @RequestMapping("toNoticeAdd")
    public String toNoticeAdd() {
        return "administrator/noticeAdd";
    }

    @RequestMapping("toNoticeEdit")
    public ModelAndView toNoticeEdit(int newsID) {

        ModelAndView mv=new ModelAndView ("administrator/noticeEdit");
        News news=newsService.getNewsById(newsID);
        mv.addObject("news",news);
        return mv;
    }
    @RequestMapping("doNoticeDelete")
    public String doNoticeDelete(int newsId){
        newsService.deleteNewsById(newsId);
        return "redirect:toNotice";
    }

    @RequestMapping("toUsers")
    public ModelAndView toUsers() {
        ModelAndView mv=new ModelAndView("administrator/user");

        List<User> map = userService.selectAll();

        mv.addObject("map", map);
        return mv;
    }

    @RequestMapping("toUserAdd")
    public String toRegister() {
        return "administrator/userAdd";
    }

    @RequestMapping("doDeleteUser")
    public String doDeleteUser(int userId){
        userService.deleteUserById(userId);
        return "redirect:toUsers";
    }

    @PostMapping("doRegister")
    public String doRegister(User user, RedirectAttributes redirectAttributes) {
        User userNow = (User) request.getSession().getAttribute("user");
        //只有admin才有权限执行添加新用户操作
        if ((user.getAccount().isEmpty())||(user.getPassword().isEmpty())){
            redirectAttributes.addFlashAttribute("message", "账号密码不能为空");
        }
        else {
            if (!"admin".equals(userNow.getAccount())) {
                redirectAttributes.addFlashAttribute("message", "权限不够");
            } else {
                userService.insertUser(user);
                redirectAttributes.addFlashAttribute("message", "添加用户成功");
                logger.info(userNow.getAccount() + "添加了新用户" + "，用户名为：" + user.getAccount());
            }
        }
        return "redirect:toUsers";
    }


    @RequestMapping("toEditUser")
    public ModelAndView toEditUser(int userId){
        ModelAndView mv=new ModelAndView("administrator/userEdit");
        User user=userService.getUserById(userId);
        mv.addObject("user",user);
        return mv;
    }

    @RequestMapping("checkUser")
    public void checkUser(@RequestParam("account") String account, HttpServletResponse response){
        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }

        int num=userService.getUserNumByAccount(account);
        if (num>0){
            out.print(1);
        }else{
            out.print(0);
        }
    }

    @RequestMapping("doUserEdit")
    public String doEditUser(int userId,User user){
        user.setUserId(userId);

        userService.updateUser(user);

        return "redirect:/admin/toUsers";
    }

    @RequestMapping("toInfo")
    public String toInfo(){return "administrator/info";};

    @RequestMapping("doChangePass")
    public ModelAndView doChangePass(User user){
        ModelAndView mv=new ModelAndView("administrator/info");

        userService.changePass(user);

        mv.addObject("message","密码修改成功！");
        return mv;
    }


    @RequestMapping("toFile")
    public ModelAndView toFile() {
        ModelAndView mv=new ModelAndView("administrator/file");

        List<File> map = fileService.selectAll();

        mv.addObject("map", map);
        return mv;
    }

    @RequestMapping("doDeleteFile")
    public String doDeleteFile(int fileId){
        fileService.deleteFileById(fileId);
        return "redirect:toFile";
    }

    @RequestMapping("toUpfile")
    public String toUpfile(){ return "administrator/fileUpload";}

    @RequestMapping("toFlow")
    public ModelAndView toFlow(){
        ModelAndView mv=new ModelAndView("administrator/flow");

        List<Flow> map = flowService.selectAll();

        mv.addObject("map", map);
        return mv;
    }

    @RequestMapping("toFlowEdit")
    public ModelAndView toFlowEdit(int flowId) {

        ModelAndView mv=new ModelAndView ("administrator/flowEdit");
        Flow flow=flowService.getFlowById(flowId);
        mv.addObject("flow",flow);
        return mv;
    }

    @RequestMapping("doFlowEdit")
    public String doFlowEdit(int flowId,Flow flow){
        flow.setFlowId(flowId);
        flowService.editFlow(flow);
        return "redirect:/admin/toFlow";
    }
}
