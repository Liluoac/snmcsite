package com.snmcsite.dao;

import com.snmcsite.BaseTest;
import com.snmcsite.entity.User;
import com.snmcsite.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class UserTest extends BaseTest {
    @Autowired
    private UserService userService;
    @Test
    public void getUser(){
        User user= userService.getUser("t");
        System.out.println(user);
    }
}
