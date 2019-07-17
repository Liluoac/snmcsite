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
    public User getUser(int id) {
        return userDao.getUser(id);
    }
}
