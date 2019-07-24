package com.snmcsite.controller;

import com.snmcsite.entity.User;
import com.snmcsite.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class AdminController {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserService userService;
    private Logger logger = LoggerFactory.getLogger(AdminController.class);

    @PostMapping("toAdmin")
    public String toAdmin() {
        return "adminIndex";
    }

    @RequestMapping("toRegister")
    public String toRegister() {
        return "register";
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
}
