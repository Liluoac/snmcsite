package com.snmcsite.service.impl;

import com.snmcsite.dao.UserDao;
import com.snmcsite.entity.User;
import com.snmcsite.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User getUser(String account) {
        return userDao.getUser(account);
    }

    @Override
    public void insertUser(User user) {
        userDao.insertUser(user);
    }

    @Override
    public void changePass(User user) { userDao.changePass(user); }
}
