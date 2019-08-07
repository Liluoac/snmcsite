package com.snmcsite.service.impl;

import com.snmcsite.dao.UserDao;
import com.snmcsite.entity.User;
import com.snmcsite.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User getUser(String account) {
        return userDao.getUser(account);
    }

    @Override
    public int getUserNumByAccount(String account) {
        return userDao.getUserNumByAccount(account);
    }

    @Override
    public User getUserById(int userId) {return userDao.getUserById(userId);}

    @Override
    public void insertUser(User user) {
        userDao.insertUser(user);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void changePass(User user) { userDao.changePass(user); }

    @Override
    public List<User> selectAll() { return userDao.selectAll(); }

    @Override
    public void deleteUserById(int userId){ userDao.deleteUserById(userId);}
}
