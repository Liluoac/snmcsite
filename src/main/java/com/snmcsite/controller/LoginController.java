package com.snmcsite.controller;

import com.snmcsite.entity.User;
import com.snmcsite.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("login")
public class LoginController {
    @Autowired
    private UserService userService;

    @RequestMapping("toLogin")
    public String toLogin() {
        return "redirect:login";
    }

    @RequestMapping("toAdmin")
    public String toAdmin() {
        return "adminIndex";
    }

    @RequestMapping("login")
    public String login() {
        return "login";
    }

    @PostMapping("doLogin")
    public String doLogin(HttpServletRequest request, RedirectAttributes redirectAttributes, User user) {
        User userSQL = userService.getUser(user.getAccount());
        if (userSQL == null) {
            redirectAttributes.addFlashAttribute("Message", "该用户未注册");
            return "redirect:login";
        } else if (!user.getPassword().equals(userSQL.getPassword())) {
            redirectAttributes.addFlashAttribute("Message", "密码输入错误！");
            return "redirect:login";
        } else {
            request.getSession().setAttribute("user", userSQL);
            return "redirect:toAdmin";
        }
    }
}
